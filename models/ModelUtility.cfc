component output='false' displayname='ModelUtility' {

	boolean function notFoundInAllowedFilters(
		required string filterName,
		required struct allowedFilters
	) {
		return arguments.allowedFilters.keyArray().findNoCase( arguments.filterName ) == 0;
	}

	function normalizeValueToList( required any value ) {
		return isArray( arguments.value ) ? arguments.value.toList() : arguments.value;
	}

	function createQueryFilters(
		allowedFilters,
		providedFilters,
		specialFilters
	) {
		var sql    = '';
		var params = {};

		var local.allowedFilters = arguments.allowedFilters;
		arguments.providedFilters.each( function( filterName, filterValue ) {
			if (
				notFoundInAllowedFilters(
					filterName     = filterName,
					allowedFilters = allowedFilters
				)
			) {
				continue;
			}
			var filterProperties = allowedFilters[ filterName ];

			params[ filterName ] = {
				'value'     : filterValue,
				'cfsqltype' : filterProperties.cfsqltype,
				'list'      : filterProperties.list
			};

			sql &= ' AND #filterProperties.columnName# IN (:#filterName#)';
		} );

		if ( structKeyExists( arguments, 'specialFilters' ) AND !structIsEmpty( arguments.specialFilters ) ) {
			specialFilters.each( function( filterName, filterValue ) {
				sql &= filterValue;
			} );
		};

		return { 'params' : params, 'sql' : sql };
	}

}
