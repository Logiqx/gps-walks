## gps-walks

### Overview

This is a simple little project to combine my walks along the South West Coast Path into a single KMZ file.

The resultant KMZ includes a folder hierarchy which is identical to the original folder structure.

Browsing all of the walks is possible via software such as Google Earth, especially the desktop version.



### GPS Data

#### Raw Data

The original GPS files are in a variety of formats; [GPX](https://logiqx.github.io/gps-wizard/formats/gpx.html), [FIT](https://logiqx.github.io/gps-wizard/formats/fit.html), [SBN](https://logiqx.github.io/gps-wizard/formats/sbn.html) and [SBP](https://logiqx.github.io/gps-wizard/formats/sbp.html).

- Some of the GPX files only contain latitude + longitude data and are lacking timestamps.
- Some of the SBP files contain 5 Hz data which is excessive for a walk.
- Most of the files include data recorded at 1Hz.

A simple Python script in [GPS Wizard](https://github.com/Logiqx/gps-wizard) converts the raw files into sanitized GPX, KML and CSV files. That script is [walk_convert.ipynb](https://github.com/Logiqx/gps-wizard/blob/main/python/adhoc/walk_convert.ipynb).

To reduce the amount of data the GPX / KML / CSV are limited to one point every 5 seconds.



#### Sanitized Data

The sanitized files are in 3 different formats:

- GPX contains timestamps, latitude, longitude, speed over ground (SOG) and course over ground (COG) - when available.
- KML contains latitude and longitude.
- CSV contains timestamps, latitude, longitude, speed over ground (SOG) and course over ground (COG) - when available.

The Python script [walk_combine.ipynb](https://github.com/Logiqx/gps-walks/blob/main/python/walk_combine.ipynb) combines all of the CSV files into a single KML / KMZ file.

Excessively high speeds (e.g. car journeys) and large jumps are reported by the script so they can be rectified.



### TODO

#### Coding

- Automatically create the KMZ file from within the Python, simply by compressing the KML file.
- Properly handle track segments when present within GPX files.
- Implement an "ignore" list so that tracks with known issues are not reported every time.
- Add start / end markers and names / labels for the individual walks.



#### Data

- Tidy up file names.
- Add missing walks:
  - Add any missing walks, probably recorded on my COROS watch.
  - Add walks other than the South West Coast Path.
  - Add duplicate GPS files, even if they just go into the "backup" folder(s).
  - Add mock walks, where we know we have completed a specific section of the South West Coast Path.
- Organize files such that we can just view our own walks, or the combined view.