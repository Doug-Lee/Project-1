trigger ValidateCaseToLead on Case (before insert) {
	switch on Trigger.operationType {
        when BEFORE_INSERT {
            ValidateCaseToLeadHelper.checkForEmailFormat(Trigger.New);
        }
    }
}