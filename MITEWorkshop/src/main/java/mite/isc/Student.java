package mite.isc;


// model/ business/ entity/ Plain Old Java Object class
public class Student 
{
	@Override
	public String toString() {
		return "Student [name=" + name + ", dept=" + dept + ", gender=" + gender + ", skills=" + skills + ", email="
				+ email + ", status=" + status + ", placed=" + placed + ", address=" + address + ", career=" + career
				+ ", regno=" + regno + ", contact=" + contact + ", cgpa=" + cgpa + ", puc=" + puc + "]";
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String name, String dept, String gender, String skills, String email, String status, String placed,
			String address, String career, long regno, long contact, Double cgpa, Double puc) {
		super();
		this.name = name;
		this.dept = dept;
		this.gender = gender;
		this.skills = skills;
		this.email = email;
		this.status = status;
		this.placed = placed;
		this.address = address;
		this.career = career;
		this.regno = regno;
		this.contact = contact;
		this.cgpa = cgpa;
		this.puc = puc;
	}
	private String name,dept,gender,skills,email,status,placed,address,career;
	private long regno,contact;
	private Double cgpa,puc;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPlaced() {
		return placed;
	}
	public void setPlaced(String placed) {
		this.placed = placed;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public long getRegno() {
		return regno;
	}
	public void setRegno(long regno) {
		this.regno = regno;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public Double getCgpa() {
		return cgpa;
	}
	public void setCgpa(Double cgpa) {
		this.cgpa = cgpa;
	}
	public Double getPuc() {
		return puc;
	}
	public void setPuc(Double puc) {
		this.puc = puc;
	}
	
}
