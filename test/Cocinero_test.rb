require 'lib/Cocinero'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
    def setup
        @cocinero = Cocinero.new
    end
    
    def tests
        assert_equal(0, @cocinero.anos)
        assert_equal(0, @cocinero.experiencia)
        assert_equal(0, @cocinero.contador)
        assert_equal(:aprendiz, @cocinero.status)
        assert_equal("El cocinero aún está aprendiendo", @cocinero.degustar_uno)
        @cocinero.uno_mas
        @cocinero.uno_mas
        @cocinero.uno_mas
        @cocinero.uno_mas
        assert_equal(4, @cocinero.anos)
        assert_equal(40, @cocinero.experiencia)
        assert_equal(0, @cocinero.contador)
        assert_equal(:cocinero, @cocinero.status)
        assert_equal("No hay platos para degustar", @cocinero.degustar_uno)
        @cocinero.crear_plato
        assert_equal("El plato estaba delicioso", @cocinero.degustar_uno)
        40.times{
            @cocinero.uno_mas 
        }
        assert_equal(44, @cocinero.anos)
        assert_equal(440, @cocinero.experiencia)
        assert_equal(7, @cocinero.contador)
        assert_equal(:retirado, @cocinero.status)
        assert_equal("El cocinero se ha jubilado", @cocinero.degustar_uno)
    end

end