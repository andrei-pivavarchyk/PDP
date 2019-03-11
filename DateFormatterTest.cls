@isTest
public class DateFormatterTest {
    @isTest
    public static void testGetFormattedDate() {
        // Create a mock version of the DateHelper class.
        DateHelper mockDH = (DateHelper) Test.createStub(DateHelper.class, new MockProvider());
        // Use the mocked object in the test.
        System.assertEquals('8/8/2016', mockDH.getTodaysDate());
    }
}