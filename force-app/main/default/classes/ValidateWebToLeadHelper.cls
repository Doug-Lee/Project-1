public class ValidateWebToLeadHelper {
    public static void checkForNullValues(List<Lead> newLeads) {
        for ( Lead a : newLeads ) {
            if (!a.Email.contains('@')) {
                a.addError('The lead has no valid email.');
            }
        }
    }
}