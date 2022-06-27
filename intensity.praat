form extract_formant
text FILENAME
endform
Read from file... 'FILENAME$'
tmin = Get start time
tmax = Get end time
To Intensity... 75 0.01
Rename: "intensity"
for i to (tmax-tmin)/0.01
    time = tmin + i * 0.01
    selectObject: "Intensity intensity"
    intensity = Get value at time: time, "cubic"
    appendInfoLine: fixed$ (time, 2), " ", fixed$ (intensity, 3)
endfor
exit
