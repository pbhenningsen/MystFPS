// Spawn a monster
instance_create_layer(x, y, "Instances", oMonster);

// Decrease the spawn count
spawn_count--;

// Set the alarm again if there are more monsters to spawn
if (spawn_count > 0) {
    alarm[0] = spawn_delay;
}