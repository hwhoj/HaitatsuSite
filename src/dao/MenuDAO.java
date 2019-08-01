package dao;

import java.util.List;

import model.City;
import model.Menu;
import model.Restaurant;
import model.Town;

public interface MenuDAO {
	List<Restaurant> selectByCategory(int category);
	List<Restaurant> selectByTownnum(String cityname, String townname);	
	Restaurant selectByRnum(int rnum);	
	List<City> selectAllCity();
	List<Town> selectAllTown();
	
	List<Menu> selectAllMenu();
	Menu selectByMnum(int mNum);
	
	boolean insertMenu(Menu menu);
	boolean updateMenu(Menu menu);
	boolean deleteMenu(int mNum);
}
