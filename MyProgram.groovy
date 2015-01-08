

println 'Hello'
println 'db.jdbc.url=' + System.getProperty('db.jdbc.url')
println 'db.username=' + System.getProperty('db.username')
println 'db.password=' + System.getProperty('db.password')

//Print Maximum available memory
int mb = 1024*1024
println('Max Memory MB:' + Runtime.getRuntime().maxMemory() / mb);
