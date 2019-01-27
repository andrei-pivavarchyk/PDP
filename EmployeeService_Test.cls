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















/*
* bad practice OR no
* md5(sha1(password))
md5(md5(salt) + md5(password))
sha1(sha1(password))
sha1(str_rot13(password + salt))
md5(sha1(md5(md5(password) + sha1(password)) + md5(password)))
*
*
*
*
* MD5
SHA1
SHA-256
SHA-512

base64 - кодирование двоичных данных
blop - BLOB (англ. Binary Large OBject — двоичный большой объект) — массив двоичных данных. В СУБД BLOB — специальный тип данных, предназначенный, в первую очередь, для хранения изображений, аудио и видео, а также компилированного программного кода.
* */



}