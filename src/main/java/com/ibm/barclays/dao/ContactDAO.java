package com.ibm.barclays.dao;

import java.util.List;

import com.ibm.barclays.model.Category;
import com.ibm.barclays.model.Contact;

/**
 * Defines DAO operations for the contact model.
 * @author www.codejava.net
 *
 */
public interface ContactDAO {
	
	public void saveOrUpdate(Contact contact);
	
	public void delete(int contactId);
	
	public Contact get(int contactId);
	
	public List<Contact> list();

	public void saveOrUpdateCategory(Category category);
}
