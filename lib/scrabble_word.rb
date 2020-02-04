class ScrabbleWord
    
    $lettre = {a: 1, b: 3, c: 3, d: 2, e: 1,
    f: 4, g: 2, h: 4, i: 1, j: 8,
    k: 5, l: 1, m: 3, n: 1, o: 1,
    p: 3, q: 10, r: 1, s: 1, t: 1,
    u: 1, v: 4, w: 4, x: 8, y: 4,
    z: 1}
    

    def initialize(word)
        @word = word 
    end

    def score
        total = 0
        @word.downcase!
        tab = @word.split("")
        tab.each do |i|
            valeur = $lettre.values_at(i.to_sym)
            fuck = valeur.join("")
            tour = fuck.to_i
            total += tour
        end
        return total
    end

    def multiplier_score(num)
        total = 0
        @word.downcase!
        tab = @word.split("")
        tab.each do |i|
            valeur = $lettre.values_at(i.to_sym)
            cool = valeur.join("")
            tour = cool.to_i
            total += tour
        end
            if num == 2
                return total * 2
            else
                return total * 3
            end
    end
       

end
