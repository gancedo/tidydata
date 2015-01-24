# Codebook

Each observation (row) in the tidy dataset, consists of the following four columns:
* subject
* activity
* variable (measurement)
* value.

Column	|	Description | Range/ values
------------	|	------------ | ------------
subject  | Identifier of the subject who carried out the experiment. | 1 to 30.
activity | Activity performed by the subject during the experiment. | walking, walking.up, walking.down, sitting, standing, laying


The third column can be any of the variables below, while the value corrresponds to the mean of all the measurements for the variable, grouped by subject and activity. The measurements in the original dataset were normalized and bounded within [-1,1] so the range of the value here is always [-1,1] with no units.

Variable	|	Description 
------------	|	------------ 
t.body.acc.mean.x	|	Mean of the time-domain signal for body acceleration along the x-axis
t.body.acc.mean.y	|	Mean of the time-domain signal for body acceleration along the y-axis
t.body.acc.mean.z	|	Mean of the time-domain signal for body acceleration along the z-axis
t.body.acc.std.x	|	Standard deviation of the time-domain signal for body acceleration along the x-axis
t.body.acc.std.y	|	Standard deviation of the time-domain signal for body acceleration along the y-axis
t.body.acc.std.z	|	Standard deviation of the time-domain signal for body acceleration along the z-axis
t.gravity.acc.mean.x	|	Mean of the time-domain signal for gravity acceleration along the x-axis
t.gravity.acc.mean.y	|	Mean of the time-domain signal for gravity acceleration along the y-axis
t.gravity.acc.mean.z	|	Mean of the time-domain signal for gravity acceleration along the z-axis
t.gravity.acc.std.x	|	Standard deviation of the time-domain signal for gravity acceleration along the x-axis
t.gravity.acc.std.y	|	Standard deviation of the time-domain signal for gravity acceleration along the y-axis
t.gravity.acc.std.z	|	Standard deviation of the time-domain signal for gravity acceleration along the z-axis
t.body.acc.jerk.mean.x	|	Mean of the time-domain signal for body acceleration jerk along the x-axis
t.body.acc.jerk.mean.y	|	Mean of the time-domain signal for body acceleration jerk along the y-axis
t.body.acc.jerk.mean.z	|	Mean of the time-domain signal for body acceleration jerk along the z-axis
t.body.acc.jerk.std.x	|	Standard deviation of the time-domain signal for body acceleration jerk along the x-axis
t.body.acc.jerk.std.y	|	Standard deviation of the time-domain signal for body acceleration jerk along the y-axis
t.body.acc.jerk.std.z	|	Standard deviation of the time-domain signal for body acceleration jerk along the z-axis
t.body.gyro.mean.x	|	Mean of the time-domain signal for body gyro along the x-axis
t.body.gyro.mean.y	|	Mean of the time-domain signal for body gyro along the y-axis
t.body.gyro.mean.z	|	Mean of the time-domain signal for body gyro along the z-axis
t.body.gyro.std.x	|	Standard deviation of the time-domain signal for body gyro along the x-axis
t.body.gyro.std.y	|	Standard deviation of the time-domain signal for body gyro along the y-axis
t.body.gyro.std.z	|	Standard deviation of the time-domain signal for body gyro along the z-axis
t.body.gyro.jerk.mean.x	|	Mean of the time-domain signal for body gyro jerk along the x-axis
t.body.gyro.jerk.mean.y	|	Mean of the time-domain signal for body gyro jerk along the y-axis
t.body.gyro.jerk.mean.z	|	Mean of the time-domain signal for body gyro jerk along the z-axis
t.body.gyro.jerk.std.x	|	Standard deviation of the time-domain signal for body gyro jerk along the x-axis
t.body.gyro.jerk.std.y	|	Standard deviation of the time-domain signal for body gyro jerk along the y-axis
t.body.gyro.jerk.std.z	|	Standard deviation of the time-domain signal for body gyro jerk along the z-axis
t.body.acc.mag.mean	|	Mean of the time-domain signal for body acceleration magnitude
t.body.acc.mag.std	|	Standard deviation of the time-domain signal for body acceleration magnitude
t.gravity.acc.mag.mean	|	Mean of the time-domain signal for gravity acceleration magnitude
t.gravity.acc.mag.std	|	Standard deviation of the time-domain signal for gravity acceleration magnitude
t.body.acc.jerk.mag.mean	|	Mean of the time-domain signal for body acceleration jerk magnitude
t.body.acc.jerk.mag.std	|	Standard deviation of the time-domain signal for body acceleration jerk magnitude
t.body.gyro.mag.mean	|	Mean of the time-domain signal for body gyro magnitude
t.body.gyro.mag.std	|	Standard deviation of the time-domain signal for body gyro magnitude
t.body.gyro.jerk.mag.mean	|	Mean of the time-domain signal for body gyro jerk magnitude
t.body.gyro.jerk.mag.std	|	Standard deviation of the time-domain signal for body gyro jerk magnitude
f.body.acc.mean.x	|	Mean of the frequency-domain signal for body acceleration along the x-axis
f.body.acc.mean.y	|	Mean of the frequency-domain signal for body acceleration along the y-axis
f.body.acc.mean.z	|	Mean of the frequency-domain signal for body acceleration along the z-axis
f.body.acc.std.x	|	Standard deviation of the frequency-domain signal for body acceleration along the x-axis
f.body.acc.std.y	|	Standard deviation of the frequency-domain signal for body acceleration along the y-axis
f.body.acc.std.z	|	Standard deviation of the frequency-domain signal for body acceleration along the z-axis
f.body.acc.jerk.mean.x	|	Mean of the frequency-domain signal for body acceleration jerk along the x-axis
f.body.acc.jerk.mean.y	|	Mean of the frequency-domain signal for body acceleration jerk along the y-axis
f.body.acc.jerk.mean.z	|	Mean of the frequency-domain signal for body acceleration jerk along the z-axis
f.body.acc.jerk.std.x	|	Standard deviation of the frequency-domain signal for body acceleration jerk along the x-axis
f.body.acc.jerk.std.y	|	Standard deviation of the frequency-domain signal for body acceleration jerk along the y-axis
f.body.acc.jerk.std.z	|	Standard deviation of the frequency-domain signal for body acceleration jerk along the z-axis
f.body.gyro.mean.x	|	Mean of the frequency-domain signal for body gyro along the x-axis
f.body.gyro.mean.y	|	Mean of the frequency-domain signal for body gyro along the y-axis
f.body.gyro.mean.z	|	Mean of the frequency-domain signal for body gyro along the z-axis
f.body.gyro.std.x	|	Standard deviation of the frequency-domain signal for body gyro along the x-axis
f.body.gyro.std.y	|	Standard deviation of the frequency-domain signal for body gyro along the y-axis
f.body.gyro.std.z	|	Standard deviation of the frequency-domain signal for body gyro along the z-axis
f.body.acc.mag.mean	|	Mean of the frequency-domain signal for body acceleration magnitude
f.body.acc.mag.std	|	Standard deviation of the frequency-domain signal for body acceleration magnitude
f.body.acc.jerk.mag.mean	|	Mean of the frequency-domain signal for body acceleration jerk magnitude
f.body.acc.jerk.mag.std	|	Standard deviation of the frequency-domain signal for body acceleration jerk magnitude
f.body.gyro.mag.mean	|	Mean of the frequency-domain signal for body gyro magnitude
f.body.gyro.mag.std	|	Standard deviation of the frequency-domain signal for body gyro magnitude
f.body.gyro.jerk.mag.mean	|	Mean of the frequency-domain signal for body gyro jerk magnitude
f.body.gyro.jerk.mag.std	|	Standard deviation of the frequency-domain signal for body gyro jerk magnitude
