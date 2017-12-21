require "lib/Cocinero"

cocinero = Cocinero.new
mutex = Mutex.new
entrenador = Thread.new do
    50.times{
        mutex.lock
        cocinero.crear_plato
        cocinero.uno_mas
        mutex.unlock
        sleep(0.1)
    }
end

degustador = Thread.new do
    50.times{
        mutex.lock
        out = cocinero.degustar_uno
        out += "\n"
        print out
        mutex.unlock
        sleep(0.1)
    }
end

sleep(5)

entrenador.join
degustador.join