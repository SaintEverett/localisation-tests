// Calculation of re and rv in first order models as defined by Gerzon

// "Here we list some basic "primitive" models, describing them in terms of the information received by the ear/brain system when responding to a number of n equally distant sound signals P placed in direction with direction cosines (x,y,z).
@import "../classes/Speaker.ck"
@import "../classes/Source.ck"

Speaker speak[4]; // first order, 4 speakers
Source sound(45.0,15.0); // one sound source with azimuth 45 degrees and zenith 15 degrees
Source sound_d(-45.0,-15.0);
vec3 velocity;
[0.0, 90.0, 180.0, 270.0] @=> float direction[]; // azimuths of speakers
[0.0, 0.0, 0.0, 0.0] @=> float elevation[]; // zeniths of speakers

for(int i; i < speak.size(); i++)
{
    speak[i].update(direction[i], elevation[i]);    
    cherr <= "Speaker: " <= i <= IO.newline();
    cherr <= "Length: " <= speak[i].placement.magnitude() <= IO.newline();
    cherr <= "x: " <= speak[i].placement.x <= IO.newline();
    cherr <= "y: " <= speak[i].placement.y <= IO.newline();
    cherr <= "z: " <= speak[i].placement.z <= IO.newline();
    cherr <= IO.newline();
}

cherr <= "Source: " <= 1 <= IO.newline();
cherr <= "Length: " <= sound.placement.magnitude() <= IO.newline();
cherr <= "x: " <= sound.placement.x <= IO.newline();
cherr <= "y: " <= sound.placement.y <= IO.newline();
cherr <= "z: " <= sound.placement.z <= IO.newline();

cherr <= "Source: " <= 2 <= IO.newline();
cherr <= "Length: " <= sound_d.placement.magnitude() <= IO.newline();
cherr <= "x: " <= sound_d.placement.x <= IO.newline();
cherr <= "y: " <= sound_d.placement.y <= IO.newline();
cherr <= "z: " <= sound_d.placement.z <= IO.newline();

sound.placement/2 +=> velocity;
sound_d.placement/2 +=> velocity;

cherr <= "Makita" <= IO.newline();
cherr <= "Length: " <= velocity.magnitude() <= IO.newline();
cherr <= "x: " <= velocity.x <= IO.newline();
cherr <= "y: " <= velocity.y <= IO.newline();
cherr <= "z: " <= velocity.z <= IO.newline();