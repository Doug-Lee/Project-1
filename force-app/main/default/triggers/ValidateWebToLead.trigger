trigger ValidateWebToLead on Lead (before insert) {
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            ValidateWebToLeadHelper.checkForNullValues(Trigger.New);
        }
    }
}