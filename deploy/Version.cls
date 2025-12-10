/*
Copyright (c) 2022 by InterSystems Corporation.
Cambridge, Massachusetts, U.S.A.  All rights reserved.
Confidential property of InterSystems Corporation.
*/

Class App.Version Extends (%Persistent, %JSON.Adaptor)
{
    Parameter VERSION = "1.6.1";

    /// VERSION
    Property installedVersion As %String [InitialExpression = {..#VERSION} ];

    /// Record created time
    Property installationTime As %DateTime [ InitialExpression = {$ZDATETIME($ZTIMESTAMP, 3, 1, 3)} ];

    ClassMethod logVersion() As %Status
    {
        set versionObj = ##class(App.Version).%New()
        return versionObj.%Save()
    }

    ClassMethod GetLatestVersion() As %String
    {
        set sql = "SELECT installedVersion FROM App.Version ORDER BY installationTime DESC"
        set rs = ##class(%SQL.Statement).%ExecDirect(,sql)
        set result = ..#VERSION
        if rs.%SQLCODE < 0 {
            $$$ThrowStatus($$$ERROR($$$SQLCode,SQLCODE,$g(%msg)))
        }
        if rs.%SQLCODE = 0 {
            if (rs.%Next()) {
                set result = rs.%Get("installedVersion")
            }
        }
        return result
    }
}
