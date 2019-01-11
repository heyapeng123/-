package cs.core.db.po;
import java.io.Serializable;
import java.util.Date;
/**
 * 客户持久化类
 */
public class VisitInfo implements Serializable {
//	private static final long serialVersionUID = 1L;
	private Integer visit_id;          // 拜访编号
	private Integer customer_id;    // 客户id
	private String customer_name;         // 客户名称
	private Integer user_id;    // 负责人id
	private String user_name;      // 负责人姓名
	private String visit_type;    // 拜访方式
	private String visit_place;       // 拜访地点
	private String remark; // 拜访信息
	private String visit_time;    //拜访时间	
	private String cust_source;      // 客户信息来源
	private String cust_industry;    // 客户所属行业
	private String cust_level;       // 客户级别
	public String getCust_source() {
		return cust_source;
	}
	public void setCust_source(String cust_source) {
		this.cust_source = cust_source;
	}
	public String getCust_industry() {
		return cust_industry;
	}
	public void setCust_industry(String cust_industry) {
		this.cust_industry = cust_industry;
	}
	public String getCust_level() {
		return cust_level;
	}
	public void setCust_level(String cust_level) {
		this.cust_level = cust_level;
	}
	private Integer start;            // 起始行
	private Integer rows;             // 所取行数
	
	public Integer getVisit_id() {
		return visit_id;
	}
	public void setVisit_id(Integer visit_id) {
		this.visit_id = visit_id;
	}
	public Integer getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(Integer customer_id) {
		this.customer_id = customer_id;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getVisit_type() {
		return visit_type;
	}
	public void setVisit_type(String visit_type) {
		this.visit_type = visit_type;
	}
	public String getVisit_place() {
		return visit_place;
	}
	public void setVisit_place(String visit_place) {
		this.visit_place = visit_place;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getVisit_time() {
		return visit_time;
	}
	public void setVisit_time(String visit_time) {
		this.visit_time = visit_time;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	

}
