public class ValidateCaseToLeadHelper {
	public static void checkForEmailFormat(List<Case> newCases) {
        for ( Case c : newCases ) {
            if (!c.ContactEmail.contains('@')) {
                c.addError('The lead has no valid email.');
            }
        }
    }
}