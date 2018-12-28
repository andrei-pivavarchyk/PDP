@IsTest
public  class EmployeeService_Test {

    static testMethod void testConfirmPassword(){

        String password='TEstPassword';
        String salt='salt';
        String username='username';

        Employee__c newEmployee= new Employee__c(
                Username__c=username,
                Password__c=SecurityService.hashPassword(password,salt),
                Salt__c=salt);

        insert newEmployee;
        System.assertEquals(newEmployee.Password__c,SecurityService.hashPassword(password,salt));
        System.assertEquals(true,EmployeeService.confirmPassword(username, password));
    }

}