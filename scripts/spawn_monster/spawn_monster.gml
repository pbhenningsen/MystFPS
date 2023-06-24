// spawn_monster.gml
function spawn_monster(min_count, max_count, x, y) {
    var spawn_count = irandom_range(min_count, max_count);
    var spawn_delay = room_speed / 2; // Adjust the divisor to control the delay between spawns

    var spawner = instance_create_layer(x, y, "Instances", oMonsterSpawner);
    spawner.min_count = min_count;
    spawner.max_count = max_count;
    spawner.spawn_delay = spawn_delay;
    spawner.spawn_count = spawn_count;
    spawner.alarm[0] = 1; // Start the first alarm immediately
}