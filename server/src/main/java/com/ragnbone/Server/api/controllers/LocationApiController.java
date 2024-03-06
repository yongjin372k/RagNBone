package com.ragnbone.Server.api.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ragnbone.Server.api.repository.LocationRepository;
import com.ragnbone.Server.api.service.LocationService;
import com.ragnbone.Server.models.Location;

@RestController
@RequestMapping("/api/v1/location")
public class LocationApiController {

    @Autowired
    private LocationService locationService;

    @Autowired
    private LocationRepository locationRepository;

    @PostMapping("/update")
    public ResponseEntity<Void> updateLocation(@RequestBody Location location) {
        locationService.saveLocationUpdate(location);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/read")
    public ResponseEntity<List<Location>> readLocation() {
        List<Location> matching = locationRepository.readLocation();
        return ResponseEntity.ok(matching);
    } 
}
