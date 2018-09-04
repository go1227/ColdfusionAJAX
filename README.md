# ColdfusionAJAX
Simple DB search using AJAX with Coldfusion

Important notes:

1 - #thisDataSource# from "getPersonByLastname" must be replaced by your own data source.
2 - The query currently relies on a table labeled PERSON, with the fields FIRSTNAME, LASTNAME and MIDDLENAME. This should be customized according to your needs.
3 - Some of the JS validations in "main.cfm" are not essential to the ajax functionality. This is a simple JS string validation and you can remove them all in case you don't need them.
