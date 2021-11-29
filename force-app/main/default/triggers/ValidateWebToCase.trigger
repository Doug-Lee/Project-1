trigger ValidateWebToCase on Case (before insert) {
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            ValidateWebToCaseHelper.checkForBlankDescription(Trigger.New);
        }
    }
}