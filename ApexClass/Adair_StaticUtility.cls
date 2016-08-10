public {{ with_or_without_sharing }} class {{ api_name }}
{

    /**
     *  Static Initialize / Constructor Method
     */
    static {}

    /**
     * Public Access Methods - All publicly accessible methods should begin with `public static` and should contain
     * proper documentation above the block of method variants. Multiple argument types may use same documentation
     * block. Internal components to the primary method should also contain sufficient in-line documentation with
     * comments. One-line argument routers may use short-hand notation as demonstrated below.
     */

    /**
     * getDecimal methods can be called with or without precision/scale, or randomNegative specification.
     *
     * @return  Decimal  A random Decimal Value
     */
    public static Decimal getDecimal () {
        return getDecimal(9, 2, true); }
    public static Decimal getDecimal (Boolean randomNegative) {
        return getDecimal(9, 2, randomNegative); }
    public static Decimal getDecimal (Integer precision, Integer scale) {
        return getDecimal(precision, scale, true); }
    public static Decimal getDecimal (Integer precision, Integer scale, Boolean randomNegative)
    {
        // Number of digits before the decimal
        Integer intDigits = precision - scale;
        // Get a random number this is at most the number of digits specified
        Decimal value = Math.random() * Math.pow(10, intDigits);
        value = value.setScale(scale);
        // If specified, randomly assign as negative value
        return (randomNegative) ? setNegativeRandomly(value) : value;
    }

    /**
     * Private Helper Methods/Declarations - All private helper methods should begin with `static`. Remember to specify
     * `@testVisible` if the method or declaration needs to be referenced by a test class.
     */

    @testVisible
    static Set<String> numbers = new Set<String> { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

}
