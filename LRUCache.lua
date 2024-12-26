--This is a lrucache script for making that specifically work.

cache = {"wee","yoo","lol",}
limit = 3
function fCacheManager()
    local choice = fChoice()
    if choice == "q" then return
	
    else
		fRearranger(choice, cache)
    end

end


function fChoice()
    print([[(A)dd another item to cache
    (Q)uit script]])
    local success, choice = pcall(tostring, read())
    if success and string.lower(choice) == "q" then
        return string.lower(choice)
    elseif success and string.lower(choice) == "a" then
        return choice
    else
        print("Invalid choice")
        fChoice()
    end
    
end

function fRearranger(choice, cache, num0)
	local num2 = num0-1
	for num1, num2 do
		cache[num1-1] = cache[num1]
	end
	table.insert(cache, choice)
	table.remove(cache, 4)
	print(cache[1].." "..cache[2].." "..cache[3].." "..cache[4])
end

fRearranger("hello there", cache, 2)

function fChecker(choice, cache)
	for num0, cache do
		if choice == cache[num0] then
			fRearranger(choice, cache, num0)
		end
	end
	return choice, cache, false
end

function f()

end
