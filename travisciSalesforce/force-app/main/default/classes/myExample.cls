public with sharing class myExample{
    public String inputText {get; set;}
    public void updateCurrentRecord(){
        if (inputText.equals('123')){
            ApexPages.addMessage(
                    New ApexPages.Message(
                            ApexPages.Severity.INFO, 'You entered ' + inputText
                    )
            );
        }else{
            ApexPages.addMessage(
                New ApexPages.Message(
                        ApexPages.Severity.ERROR, 'You entered ' + inputText
                )
        );
        }

    }

}