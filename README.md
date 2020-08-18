# scs-model-utility

# Model Utility
![Master Branch Build Status(https://www.forgebox.io/view/scs-model-utility)](https://www.forgebox.io/api/v1/entry/scs-model-utility/badges/version)![Master Branch Download Status(https://www.forgebox.io/view/scs-model-utility)](https://www.forgebox.io/api/v1/entry/scs-model-utility/badges/downloads)

The Model Utility is a module that will simplify the use of Models by providing common functionality and actions done on a model.
...

## Getting Started
Get a copy of the module into your project
```
box install scs-model-utility
```

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

This Module asumes that you are familiar with the ColdBox Framework architecture.

### Installing

*Step 1:* Instanciate your Model from your newly installed Module
Create a new property and inject the model of your choice. The pattern to inject its value is in this manner [Model]@[Module] 
```
    property name='modelUtility' inject='ModelUtility@model-utility'
```
*Step 3:* call the print() method and pass your data.
Once your property has been declared and injected with the model, you are ready to use it, here is and example of the minimum required parameters you need to pass:
```
    modelUtility.[desiredfunction]([neded parameters]);
 
```

## Deployment


## Authors & Contributors

* **Eduardo Gomez** - [Eduardo Gomez](https://github.com/egomezm)

## References

* [ColdBox Platform](https://www.ortussolutions.com/products/coldbox)