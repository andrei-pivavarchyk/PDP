public class controllerForTemplate{

    String firstName;
    String lastName;

    
    Boolean showGreeting = false;
    
    public PageReference save() {
        showGreeting = true;
        return null;
    }
    
    public void setFirstName(String firstName) {
        firstName = firstName;
    }
    
    public String getFirstName() {
        return firstName;
    }
    
    public void setLastName(String lastName) {
        lastName= lastName;
    }
    
    public Integer getLastName() {
        return lastName;
    }
     
    public Boolean getShowGreeting() {
        return showGreeting;
    }
}
