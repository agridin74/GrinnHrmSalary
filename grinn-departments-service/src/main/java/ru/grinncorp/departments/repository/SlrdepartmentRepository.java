package ru.grinncorp.departments.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ru.grinncorp.departments.entity.Slrdepartment;
/**
 * 
 * @author agridin74
 * 
 */
public interface SlrdepartmentRepository extends JpaRepository<Slrdepartment, Long> {
	
	/**     Пользовательский запрос
	 *      @Query("select u from User u where u.name = :name")
     *      User findByNameCustomQuery(@Param("name") String name);
     *      
     *		native query
     *		@Query(
     *	      	value = "select * from user as u where u.name = :name",
     *			nativeQuery = true)
     *		User findByNameNativeQuery(@Param("name") String name);
	 */

}
