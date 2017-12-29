package com.timesheets.repository;

import com.timesheets.domain.Projects;
import org.springframework.stereotype.Repository;

import org.springframework.data.jpa.repository.*;


/**
 * Spring Data JPA repository for the Projects entity.
 */
@SuppressWarnings("unused")
@Repository
public interface ProjectsRepository extends JpaRepository<Projects, Long> {

}
