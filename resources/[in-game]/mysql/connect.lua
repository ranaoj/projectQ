local conn = new('conn')

function conn.prototype.____constructor(self)
    local _print = outputDebugString
    self.connect = nil
    self.hostname = '127.0.0.1'
    self.username = 'root'
    self.password = ''
    self.database = 'roleplay'
    self.port = 3306
    self.connect = Connection('mysql','dbname='..self.database..';host='..self.hostname,self.username,self.password,'autoreconnect=1')
    if not self.connect then
        _print('db connection could not be completed')
    else
        _print('db connection completed')
    end
    function getConn() return self.connect end
end

load(conn)