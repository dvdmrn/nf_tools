﻿// FIXME: Set maincomp BG color to white
// FIXME: Add white solid below all part layers
// FIXME: Add white solid above all part layers with standardized fade in/out
// FIXME: Add adjustment layer with CC Vignette effect w/ strength set to 50% below top white solid layer
// FIXME: Add a second or two of time before a marker in part comps

app.beginUndoGroup("SetupMainComp");

var audio = app.project.selection[0];
var newName = audio.name.substr(0, audio.name.indexOf('.')) + " - MainComp";
var newComp = app.project.items.addComp(newName, 1920, 1080, 1.0, audio.duration, 30);
newComp.layers.add(audio);

var mainComp = newComp;
var audioLayer = mainComp.layers[1];

// Get number of markers on layer

var markerStream = audioLayer.property("Marker");
var markerCount = markerStream.numKeys;

var endTime = mainComp.duration;

if (markerCount == 0)
{
    alert("No Markers on selected Layer");
} else {

    var newComps = [];
    var prevTime = 0;

    // Make a folder for the new Precomps
    var rootFolder = app.project.rootFolder
    var newFolder = app.project.items.addFolder("Parts");

    // Add a temporary Zoomer
    var zoomer = mainComp.layers.addNull();
    var zoomerScale = zoomer.property("Transform").property("Scale");
    zoomerScale.setValueAtTime(0, [100,100]);
    zoomerScale.setValueAtTime(mainComp.duration, [mainComp.duration, mainComp.duration]);

    // For each marker, duplicate the audio layer, set in and out points, then precompose
    for (var i = 1; i <= markerCount+1; i++)
    {
            var duplicatedAudioLayer = audioLayer.duplicate();
            var duplicatedZoomerLayer = zoomer.duplicate();
            duplicatedZoomerLayer.name = "Zoomer";
            
            // Set audio in and out points
            duplicatedAudioLayer.inPoint = prevTime;

            if (i==markerCount+1) {
                    duplicatedAudioLayer.outPoint = endTime;
                    currentTime=endTime;
                } else {
                    var currentMarker = markerStream.keyValue(i);
                    var currentTime = markerStream.keyTime(i);
                    duplicatedAudioLayer.outPoint = currentTime;
                }

            var compName = "Part" + i;            
            
            // Precompose and add to the folder
            newComp = mainComp.layers.precompose([duplicatedAudioLayer.index, duplicatedZoomerLayer.index], compName, true);
            newComps.push(newComp);
            newComp.parentFolder = newFolder;
            
            // Set part comp in and out points, with a 10-second handle at the end
            var newCompLayer = mainComp.layers.byName(compName);
            newCompLayer.inPoint = prevTime;
            newCompLayer.outPoint = currentTime + 10;
            
            // Disable audio
            newCompLayer.audioEnabled = false;
                
            // Change comp bg
            newComp.bgColor = [1.0,1.0,1.0];
            
            // Move to top
            newCompLayer.moveToBeginning();
            
            prevTime = currentTime;
    }

    zoomer.remove();
}

app.endUndoGroup();