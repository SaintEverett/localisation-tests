public class Source
{
    fun float degreeRad(float degree)
    {
        return (degree * (pi/180)); 
    }

    fun float radDegree(float rad)
    {
        return (rad * (180/pi));
    }

    fun void Source(float n_direction, float n_elevation)
    {
        n_direction => direction;
        n_elevation => elevation;
        (Math.cos(degreeRad(n_direction))*Math.cos(degreeRad(n_elevation))) => x;
        (Math.sin(degreeRad(n_direction))*Math.cos(degreeRad(n_elevation))) => y;
        (Math.sin(degreeRad(n_elevation))) => z;
        x => placement.x;
        y => placement.y;
        z => placement.z;
    }

    fun void update(float n_direction, float n_elevation)
    {
        n_direction => direction;
        n_elevation => elevation;
        (Math.cos(degreeRad(n_direction))*Math.cos(degreeRad(n_elevation))) => x;
        (Math.sin(degreeRad(n_direction))*Math.cos(degreeRad(n_elevation))) => y;
        (Math.sin(degreeRad(n_elevation))) => z;
        x => placement.x;
        y => placement.y;
        z => placement.z;
    }

    float direction;
    float elevation;
    float x;
    float y;
    float z;
    vec3 placement;
}