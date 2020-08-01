def to_hex(r, g, b)
    [r, g, b].inject('#'){|hex, n| hex + n.to_s(16).rjust(2, '0')}
end

def to_hex1(r, g, b)
    hex = "#"
    [r, g, b].each do |s|
        hex += s.to_s(16).rjust(2, '0')
    end
    hex
end

def to_ints(hex)
    hex.scan(/\w\w/).map(&:hex)
end

def to_ints1(hex)
    r = hex[1..2]
    g = hex[3..4]
    b = hex[5..6]
    [r, g, b].map(&:hex)
end
