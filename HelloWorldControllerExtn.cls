//Hello World Controller Extension

public class HelloWorldControllerExtn {
	
	//marking variable final as this will be assigned only once, from the constructor
	private final Account acct;
	
	//this constructor with a reference to StandardController makes it a Controller Extension
	public helloWorldControllerExtn (ApexPages.StandardController controller) {
		acct = (Account)controller.getRecord();
	}
	
	//Note that this code will generate an Exception since the Name property of the Account
	// record has not been queried. This can be overcome by implicitly querying the Name property 
	// by binding the field Name in the VF that uses this code 
	// (
	// using <apex:inputfield value = "{!account.name}"/>
	// or <apex:outputfield value = "{!account.name}"/>
	// apex:outputField option is better as it does not require a form
	// Nte: apex:outputText does NOT implicitly query the field
	// ) 
	public String getHelloMessage() { 
		return 'Hello ' + acct.Name + '!';
	}
	
}