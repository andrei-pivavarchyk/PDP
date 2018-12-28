public  class EmployeeService {

    public static void saveEmployee(String username,String password){
        String salt=String.valueOf(Crypto.getRandomInteger());
        String hashPassword = SecurityService.hashPassword(password,salt);
        Employee__c newEmployee= new Employee__c(Username__c=username,Password__c=hashPassword,Salt__c=salt);
    }

    public static Boolean confirmPassword(String username, String password){
        List<Employee__c> employes=[Select Username__c,Password__c,Salt__c from Employee__c where Username__c=:username limit 1];

        if(employes.size()>0&&employes[0].Password__c==SecurityService.hashPassword(password,employes[0].Salt__c)){
            system.debug(employes[0].Password__c);
            system.debug(SecurityService.hashPassword(password,employes[0].Salt__c));
            return true;
        }
        return false;
    }

}