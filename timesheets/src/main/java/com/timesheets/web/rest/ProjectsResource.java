package com.timesheets.web.rest;

import com.codahale.metrics.annotation.Timed;
import com.timesheets.domain.Projects;

import com.timesheets.repository.ProjectsRepository;
import com.timesheets.web.rest.errors.BadRequestAlertException;
import com.timesheets.web.rest.util.HeaderUtil;
import io.github.jhipster.web.util.ResponseUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.net.URISyntaxException;

import java.util.List;
import java.util.Optional;

/**
 * REST controller for managing Projects.
 */
@RestController
@RequestMapping("/api")
public class ProjectsResource {

    private final Logger log = LoggerFactory.getLogger(ProjectsResource.class);

    private static final String ENTITY_NAME = "projects";

    private final ProjectsRepository projectsRepository;

    public ProjectsResource(ProjectsRepository projectsRepository) {
        this.projectsRepository = projectsRepository;
    }

    /**
     * POST  /projects : Create a new projects.
     *
     * @param projects the projects to create
     * @return the ResponseEntity with status 201 (Created) and with body the new projects, or with status 400 (Bad Request) if the projects has already an ID
     * @throws URISyntaxException if the Location URI syntax is incorrect
     */
    @PostMapping("/projects")
    @Timed
    public ResponseEntity<Projects> createProjects(@RequestBody Projects projects) throws URISyntaxException {
        log.debug("REST request to save Projects : {}", projects);
        if (projects.getId() != null) {
            throw new BadRequestAlertException("A new projects cannot already have an ID", ENTITY_NAME, "idexists");
        }
        Projects result = projectsRepository.save(projects);
        return ResponseEntity.created(new URI("/api/projects/" + result.getId()))
            .headers(HeaderUtil.createEntityCreationAlert(ENTITY_NAME, result.getId().toString()))
            .body(result);
    }

    /**
     * PUT  /projects : Updates an existing projects.
     *
     * @param projects the projects to update
     * @return the ResponseEntity with status 200 (OK) and with body the updated projects,
     * or with status 400 (Bad Request) if the projects is not valid,
     * or with status 500 (Internal Server Error) if the projects couldn't be updated
     * @throws URISyntaxException if the Location URI syntax is incorrect
     */
    @PutMapping("/projects")
    @Timed
    public ResponseEntity<Projects> updateProjects(@RequestBody Projects projects) throws URISyntaxException {
        log.debug("REST request to update Projects : {}", projects);
        if (projects.getId() == null) {
            return createProjects(projects);
        }
        Projects result = projectsRepository.save(projects);
        return ResponseEntity.ok()
            .headers(HeaderUtil.createEntityUpdateAlert(ENTITY_NAME, projects.getId().toString()))
            .body(result);
    }

    /**
     * GET  /projects : get all the projects.
     *
     * @return the ResponseEntity with status 200 (OK) and the list of projects in body
     */
    @GetMapping("/projects")
    @Timed
    public List<Projects> getAllProjects() {
        log.debug("REST request to get all Projects");
        return projectsRepository.findAll();
        }

    /**
     * GET  /projects/:id : get the "id" projects.
     *
     * @param id the id of the projects to retrieve
     * @return the ResponseEntity with status 200 (OK) and with body the projects, or with status 404 (Not Found)
     */
    @GetMapping("/projects/{id}")
    @Timed
    public ResponseEntity<Projects> getProjects(@PathVariable Long id) {
        log.debug("REST request to get Projects : {}", id);
        Projects projects = projectsRepository.findOne(id);
        return ResponseUtil.wrapOrNotFound(Optional.ofNullable(projects));
    }

    /**
     * DELETE  /projects/:id : delete the "id" projects.
     *
     * @param id the id of the projects to delete
     * @return the ResponseEntity with status 200 (OK)
     */
    @DeleteMapping("/projects/{id}")
    @Timed
    public ResponseEntity<Void> deleteProjects(@PathVariable Long id) {
        log.debug("REST request to delete Projects : {}", id);
        projectsRepository.delete(id);
        return ResponseEntity.ok().headers(HeaderUtil.createEntityDeletionAlert(ENTITY_NAME, id.toString())).build();
    }
}
