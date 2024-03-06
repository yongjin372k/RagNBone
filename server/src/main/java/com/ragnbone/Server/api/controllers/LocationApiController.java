package com.ragnbone.server.api.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ragnbone.server.api.service.LocationService;
import com.ragnbone.server.models.Location;

@RestController
@RequestMapping("/api/controller")
public class LocationApiController {

    @Autowired
    private LocationService locationService;

    @PostMapping
    public ResponseEntity<Void> updateLocation(@RequestBody Location location) {
        locationService.saveLocationUpdate(location);
        return ResponseEntity.ok().build();
    }
}
