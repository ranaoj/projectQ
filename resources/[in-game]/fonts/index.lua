fonts = {
    list = {
        {'RobotoB', 'assets/RobotoB.ttf'},
        {'Roboto', 'assets/Roboto.ttf'},
    },
    
    get = function(self,name,size)
        if not size then
            size = 9
        end
        self.font = nil
        for index, value in ipairs(self.list) do
            if value[1] == name then
                self.font = DxFont(value[2], size)
            end
        end
        return self.font
    end,

    index = function(self)
        function get(name,size) return self:get(name,size) end
    end,
}
instance = new(fonts)
instance:index()