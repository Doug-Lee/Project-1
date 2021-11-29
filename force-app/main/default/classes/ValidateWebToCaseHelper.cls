public class ValidateWebToCaseHelper {
    public static void checkForBlankDescription(List<Case> newCases) {
        for ( Case c : newCases ) {
            if (String.IsBlank(c.Description)) {
                c.addError('The case has no description.');
            }
        }
    }
}