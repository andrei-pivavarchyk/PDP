public class RetrieveCase {

    public String getContactName() {
        return 'Babara Levy';
    }

    public List<Case> getCases() {
        return [SELECT status, subject FROM Case
        WHERE Contact.name = 'Some Name' AND status != 'Closed' limit 5];
    }
}