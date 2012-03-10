-- Empty file that just for testing.

local logger = import 'LrLogger'( 'Stash' )
logger:enable("logfile")

--Utils.md5Files(_PLUGIN.path)
import "LrFunctionContext".callWithContext( 'Getting remote file', function(context)
    if context ~= nil then
        logger:info("Testing: Have a context!")
    end

    context:addFailureHandler(function(result,message)
        logger:error("Testing: Error message: " .. message)
    end)

    import "LrTasks".startAsyncTaskWithoutErrorHandler( function()
        Utils.logTable(Utils.getJSON("http://kyl191.net/"))
    end)

end)



