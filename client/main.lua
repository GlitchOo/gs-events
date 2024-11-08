local EventHashes = {}

if Config.Group_0 then
    for k, v in next, Events[0] do
        EventHashes[GetHashKey(k)] = v
        EventHashes[GetHashKey(k)].Name = k
    end

    CreateThread(function()
        while true do
            Wait(0)
            local size = GetNumberOfEvents(0)
            if size > 0 then
                for i = 0, size - 1 do
                    local eventAtIndex = GetEventAtIndex(0, i)
                    
                    if EventHashes[eventAtIndex] then
                        local eventName = EventHashes[eventAtIndex].Name
                        local eventDataSize = EventHashes[eventAtIndex].DataSize
                        local eventDataStruct = DataView.ArrayBuffer(8*eventDataSize) -- buffer must be 8*eventDataSize or bigger
                        for j = 0, eventDataSize - 1 do
                            eventDataStruct:SetInt32(8*j, 0) -- 8*j offset for j element of eventData
                        end
                        
                        local is_data_exists = Citizen.InvokeNative(0x57EC5FA4D4D6AFCA, 0, i, eventDataStruct:Buffer(), eventDataSize)

                        if is_data_exists then
                            local eventData = {}
                            for j = 0, eventDataSize - 1 do
                                eventData[#eventData + 1] = eventDataStruct:GetInt32(8*j)
                            end

                            TriggerEvent('gameEventTriggered', eventName, eventData)
                        end
                    end
                end
            end
        end
    end)
end

if Config.Group_1 then
    for k, v in next, Events[1] do
        EventHashes[GetHashKey(k)] = v
        EventHashes[GetHashKey(k)].Name = k
    end

    CreateThread(function()
        while true do
            Wait(0)
            local size = GetNumberOfEvents(1)
            if size > 0 then
                for i = 0, size - 1 do
                    local eventAtIndex = GetEventAtIndex(1, i)
                    
                    if EventHashes[eventAtIndex] then
                        local eventName = EventHashes[eventAtIndex].Name
                        local eventDataSize = EventHashes[eventAtIndex].DataSize
                        local eventDataStruct = DataView.ArrayBuffer(8*eventDataSize) -- buffer must be 8*eventDataSize or bigger
                        for j = 0, eventDataSize - 1 do
                            eventDataStruct:SetInt32(8*j, 0) -- 8*j offset for j element of eventData
                        end
                        
                        local is_data_exists = Citizen.InvokeNative(0x57EC5FA4D4D6AFCA, 1, i, eventDataStruct:Buffer(), eventDataSize)

                        if is_data_exists then
                            local eventData = {}
                            for j = 0, eventDataSize - 1 do
                                eventData[#eventData + 1] = eventDataStruct:GetInt32(8*j)
                            end

                            TriggerEvent('gameEventTriggered', eventName, eventData)
                        end
                    end
                end
            end
        end
    end)
end

if Config.Group_2 then
    for k, v in next, Events[2] do
        EventHashes[GetHashKey(k)] = v
        EventHashes[GetHashKey(k)].Name = k
    end

    CreateThread(function()
        while true do
            Wait(0)
            local size = GetNumberOfEvents(2)
            if size > 0 then
                for i = 0, size - 1 do
                    local eventAtIndex = GetEventAtIndex(2, i)
                    
                    if EventHashes[eventAtIndex] then
                        local eventName = EventHashes[eventAtIndex].Name
                        local eventDataSize = EventHashes[eventAtIndex].DataSize
                        local eventDataStruct = DataView.ArrayBuffer(8*eventDataSize) -- buffer must be 8*eventDataSize or bigger
                        for j = 0, eventDataSize - 1 do
                            eventDataStruct:SetInt32(8*j, 0) -- 8*j offset for j element of eventData
                        end
                        
                        local is_data_exists = Citizen.InvokeNative(0x57EC5FA4D4D6AFCA, 2, i, eventDataStruct:Buffer(), eventDataSize)

                        if is_data_exists then
                            local eventData = {}
                            for j = 0, eventDataSize - 1 do
                                eventData[#eventData + 1] = eventDataStruct:GetInt32(8*j)
                            end

                            TriggerEvent('gameEventTriggered', eventName, eventData)
                        end
                    end
                end
            end
        end
    end)
end

if Config.Group_3 then
    for k, v in next, Events[3] do
        EventHashes[GetHashKey(k)] = v
        EventHashes[GetHashKey(k)].Name = k
    end

    CreateThread(function()
        while true do
            Wait(0)
            local size = GetNumberOfEvents(3)
            if size > 0 then
                for i = 0, size - 1 do
                    local eventAtIndex = GetEventAtIndex(3, i)
                    
                    if EventHashes[eventAtIndex] then
                        local eventName = EventHashes[eventAtIndex].Name
                        local eventDataSize = EventHashes[eventAtIndex].DataSize
                        local eventDataStruct = DataView.ArrayBuffer(8*eventDataSize) -- buffer must be 8*eventDataSize or bigger
                        for j = 0, eventDataSize - 1 do
                            eventDataStruct:SetInt32(8*j, 0) -- 8*j offset for j element of eventData
                        end
                        
                        local is_data_exists = Citizen.InvokeNative(0x57EC5FA4D4D6AFCA, 3, i, eventDataStruct:Buffer(), eventDataSize)

                        if is_data_exists then
                            local eventData = {}
                            for j = 0, eventDataSize - 1 do
                                eventData[#eventData + 1] = eventDataStruct:GetInt32(8*j)
                            end

                            TriggerEvent('gameEventTriggered', eventName, eventData)
                        end
                    end
                end
            end
        end
    end)
end

if Config.Dev then
    AddEventHandler('gameEventTriggered', function(eventName, eventData)
        print('Event Name: ', eventName, 'Event Data: ', json.encode(eventData, { indent = true }))
    end)
end