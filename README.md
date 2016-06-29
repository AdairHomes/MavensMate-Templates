MavensMate-Templates
====================

A repository of metadata templates for use in MavensMate projects.

### Documentation
http://mavensmate.com/Plugins/Sublime_Text/Metadata_Templates

### How To Implement

The only step required to use these templates is to modify MavensMate User Settings to pull from the Adair Homes GitHub Repository.
```JSON
{
    ...
    "mm_template_location": "remote",
    "mm_template_source": "AdairHomes/MavensMate-Templates/master",
    ...
}
```

### How To Make A New Template


###### Modify package.json to include new class/trigger/component/page
```JSON
{
	"name" 			: "Apex Trigger",
	"file_name"		: "ApexTrigger.trigger",
	"description" 	: "Basic Apex Trigger template",
	"author" 		: "MavensMate",
	"params" 		: [
        {
            "name"          : "api_name",
            "description"   : "Apex Trigger API Name",
            "default" 		: "MyCoolTrigger"
        },
        {
            "name"          : "object_name",
            "description"   : "Object API Name",
            "default" 		: "Account"
        },
        {
            "name"          : "foo",
            "description"   : "A random variable name",
            "default" 		: "myCoolString"
        }
   ]
}
```

###### Create class/trigger/component/page using templating parameters set in package.json
```JAVA
trigger {{ api_name }} on {{ object_name }} (before insert) {
	String {{ foo }} = 'bar';
}
```
