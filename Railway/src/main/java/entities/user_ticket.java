package entities;

public class user_ticket {
    private int id;
    private String trainno;
    private String jdate;
    private String destination;
    private String start;
    private String name;
    private String email;
    private String phoneno;
    private String gender;
    private String seat;
    private String fair;
    
	public user_ticket(int id, String trainno, String jdate, String destination, String start, String name,
			String email, String phoneno, String gender, String seat, String fair) {
		this.id = id;
		this.trainno = trainno;
		this.jdate = jdate;
		this.destination = destination;
		this.start = start;
		this.name = name;
		this.email = email;
		this.phoneno = phoneno;
		this.gender = gender;
		this.seat = seat;
		this.fair = fair;
	}

	public user_ticket() {

		// TODO Auto-generated constructor stub
	}
    
	public user_ticket( String trainno, String jdate, String destination, String start, String name,
			String email, String phoneno, String gender, String seat, String fair) {
		this.id = id;
		this.trainno = trainno;
		this.jdate = jdate;
		this.destination = destination;
		this.start = start;
		this.name = name;
		this.email = email;
		this.phoneno = phoneno;
		this.gender = gender;
		this.seat = seat;
		this.fair = fair;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTrainno() {
		return trainno;
	}

	public void setTrainno(String trainno) {
		this.trainno = trainno;
	}

	public String getJdate() {
		return jdate;
	}

	public void setJdate(String jdate) {
		this.jdate = jdate;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getFair() {
		return fair;
	}

	public void setFair(String fair) {
		this.fair = fair;
	}
    
	
}
