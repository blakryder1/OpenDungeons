/*!
 * \file   console.as
 * \date:  16 August 2011
 * \author StefanP.MUC
 * \brief  AS script to handle the console commands
 */

/*! \brief Evaluate the comand and its params and call the according function
 *
 *  \param com The command to be executed
 *  \param args This array conatins all arguments to the function
 *
 *  Complex operations should be put in separate functions. Easy tasks like
 *  getting or setting variables or printing a string can be stored directly
 *  in here.
 */
void executeConsoleCommand(string &in com, string[] &in args)
{
    //TODO: convert c++ code to as code and put it here

    if(com.length() == 0)
    {
        console.print("ERROR: Tried to execute an empty command");
        return;
    }

    const uint argCount = args.length();

    if(com == "exit" || com == "quit")
    {
        if(checkArgCount(argCount, 0))
        {
            frameListener.requestExit();
        }
    }

    else if(com == "help" || com == "?")
    {
        //TODO: code
    }

    else if(com == "save")
    {
        //TODO: code
    }

    else if(com == "load")
    {
        //TODO: code
    }

    else if(com == "ambientlight")
    {
        //TODO: code
    }

    else if(com == "addtiles")
    {
        //TODO: code
    }

    else if(com == "movespeed")
    {
        if(argCount == 0)
        {
            console.print("Current movespeed: " + cameraManager.get_MoveSpeed());
        }
        else
        {
            if(checkArgCount(argCount, 1))
            {
                if(checkIfFloat(args[0]))
                {
                    cameraManager.set_MoveSpeedAccel(2.0 * stringToFloat(args[0]));
                    //TODO: find out how to make implicit conversions possible
                    //cameraManager.set_MoveSpeedAccel(2.0 * args[0]);
                    console.print("movespeed set to: " + cameraManager.get_MoveSpeed());
                }
                else
                {
                    console.print("ERROR: Expected a floating point number in first argument.");
                }
            }
        }
    }

    /*
    //TODO: need to register Ogre::Degree first
    else if(com == "rotatespeed")
    {
        if(argCount == 0)
        {
            console.print("Current rotatespeed: " + cameraManager.get_RotateSpeed());
        }
        else
        {
            if(checkArgCount(argCount, 1))
            {
                //cameraManager.set_RotateSpeed(args[0]);
                console.print("rotatespeed set to: " + cameraManager.get_RotateSpeed());
            }
        }
    }*/

    else if(com == "fps")
    {
        if(argCount == 0)
        {
            console.print("Current maximum fps count: " + MAXFPS);
        }
        else
        {
            if(checkArgCount(argCount, 1))
            {
                if(checkIfFloat(args[0]))
                {
                    MAXFPS = stringToFloat(args[0]);
                    console.print("set maximum fps count to: " + MAXFPS);
                }
                else
                {
                    console.print("ERROR: Expected a floating point number in first argument.");
                }
            }
        }
    }

    else if(com == "aithreads")
    {
        if(argCount == 0)
        {
            console.print("Current maximum number of creature AI threads: " + frameListener.get_GameMap().get_MaxAIThreads());
        }
        else
        {
            if(checkArgCount(argCount, 1))
            {
                if(checkIfInt(args[0]))
                {
                    const uint maxThreads = stringToUInt(args[0]);
                    if(maxThreads > 0)
                    {
                        frameListener.get_GameMap().set_MaxAIThreads(maxThreads);
                        console.print("Maximum number of creature AI threads set to: " + frameListener.get_GameMap().get_MaxAIThreads());
                    }
                    else
                    {
                        console.print("ERROR: Maximum number of threads must be greater zero.");
                    }
                }
            }
        }
    }

    else if(com == "turnspersecond")
    {
        //TODO: code
    }

    else if(com == "nearclip")
    {
        //TODO: code
    }

    else if(com == "farclip")
    {
        //TODO: code
    }

    else if(com == "addcreature")
    {
        //TODO: code
    }

    else if(com == "addclass")
    {
        //TODO: code
    }

    else if(com == "list" || com == "ls")
    {
        //TODO: code
    }

    else if(com == "newmap")
    {
        //TODO: code
    }

    else if(com == "refreshmesh")
    {
        //TODO: code
    }

    else if(com == "nick")
    {
        //TODO: code
    }

    else if(com == "maxtime")
    {
        //TODO: code
    }

    else if(com == "maxmessages")
    {
        //TODO: code
    }

    else if(com == "connect")
    {
        //TODO: code
    }

    else if(com == "host")
    {
        //TODO: code
    }

    else if(com == "chathelp")
    {
        //TODO: code
    }

    else if(com == "chat")
    {
        //TODO: code
    }

    else if(com == "visdebug")
    {
        //TODO: code
    }

    else if(com == "disconnect")
    {
        //TODO: code
    }

    else if(com == "next")
    {
        //TODO: code
    }

    else
    {
        console.print("ERROR: Command not found. Try help to get an overview.");
    }
}

bool checkArgCount(uint &in actualCount, uint &in expectedCount)
{
    if(actualCount != expectedCount)
    {
        console.print("ERROR: Wrong number of arguments (" + actualCount + "), expected " + expectedCount);
        return false;
    }

    return true;
}
