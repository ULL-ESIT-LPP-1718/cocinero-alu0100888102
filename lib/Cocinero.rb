
class Cocinero

    attr_reader :anos, :contador, :experiencia, :status

    def initialize
        @anos = 0
        @contador = 0
        @experiencia = 0
        @status = :aprendiz
    end
    
    def uno_mas
        @anos = @anos + 1
        @experiencia = @experiencia + 10
        if (anos > 3) then
            @status = :cocinero
        end
        if (anos > 40) then
            @status = :retirado
        end
    end
    
    def crear_plato
        if (@status == :cocinero) then
            @contador += @experiencia / 5
        end
    end
    
    def degustar_uno
        if(@status == :aprendiz) then
            return "El cocinero aún está aprendiendo"
        end
        if (@status == :retirado) then
            return "El cocinero se ha jubilado"
        end
        if(@status == :cocinero) then
            if(@contador > 0) then
                @contador -= 1
                return "El plato estaba delicioso"
            else
                return "No hay platos para degustar"
            end
        end
    end
    
end