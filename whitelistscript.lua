local HttpService = game:GetService('HttpService');
local request = http_request or syn.request or HttpPost or request
local response = request(
    {
    Url = "https://bot.imc0rpse.repl.co/whitelistfile.json",
        Method = "GET",
        Headers = {
            ["Content-Type"] = "application/json"  
        }
    }
);
local data = HttpService:JSONDecode(response.Body)
--print(data)
for i, val in pairs(data) do
    if not game.Players.LocalPlayer.UserId == tonumber(val) then
                game.StarterGui:SetCore("SendNotification", {
            Title = "Not Whitelisted";
            Text = "Hahaha noob";
            Icon = "";
            Duration = 2;
        })
        return
        else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Whitelisted";
            Text = "you pro";
            Icon = "";
            Duration = 2;
        })
        return
        
    end
end
