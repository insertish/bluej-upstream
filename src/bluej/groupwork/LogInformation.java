/*
 This file is part of the BlueJ program. 
 Copyright (C) 1999-2009  Michael K�lling and John Rosenberg 
 
 This program is free software; you can redistribute it and/or 
 modify it under the terms of the GNU General Public License 
 as published by the Free Software Foundation; either version 2 
 of the License, or (at your option) any later version. 
 
 This program is distributed in the hope that it will be useful, 
 but WITHOUT ANY WARRANTY; without even the implied warranty of 
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
 GNU General Public License for more details. 
 
 You should have received a copy of the GNU General Public License 
 along with this program; if not, write to the Free Software 
 Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA. 
 
 This file is subject to the Classpath exception as provided in the  
 LICENSE.txt file that accompanied this code.
 */
package bluej.groupwork;

import java.io.File;
import java.util.List;

/**
 * Class for objects representing log entries from commit operations.
 * 
 * @author Davin McCall
 */
public class LogInformation
{
    private File [] files;
    private List revisionList;
    
    /**
     * Create a log information entry for the given file and list of revisions
     * @param file  The file to which the entry applies
     * @param revisionList  The list of revisions for this file (List of Revision)
     */
    public LogInformation(File [] files, List revisionList)
    {
        this.files = files;
        this.revisionList = revisionList;
    }
    
    public File [] getFiles()
    {
        return files;
    }
    
    public List getRevisionList()
    {
        return revisionList;
    }
}