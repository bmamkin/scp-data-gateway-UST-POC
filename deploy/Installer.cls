/*
Copyright (c) 2022 by InterSystems Corporation.
Cambridge, Massachusetts, U.S.A.  All rights reserved.
Confidential property of InterSystems Corporation.
*/

Class App.Installer
{

XData setup
{
<Manifest>
  <Default Name="Namespace" Value="SC"/>
  <Default Name="database" Value="sc"/>
  <Default Name="app" Value="SC"/>

  <Namespace Name="${Namespace}" Code="${Namespace}" Data="${Namespace}" Create="yes" Ensemble="1">

    <Configuration>
      <Database Name="${Namespace}" Dir="${mgrdir}${database}/data" Create="yes" Resource="%DB_${Namespace}"/>
    </Configuration>
    <CSPApplication Url="/csp/${app}" Directory="${cspdir}${app}"  ServeFiles="1" Recurse="1" MatchRoles=":%DB_${Namespace}" AuthenticationMethods="32"/>
  </Namespace>
</Manifest>
}

ClassMethod setup(ByRef pVars, pLogLevel As %Integer = 3, pInstaller As %Installer.Installer, pLogger As %Installer.AbstractLogger) As %Status [ CodeMode = objectgenerator, Internal ]
{
  #; Let XGL document generate code for this method.
  do ##class(%Installer.Manifest).%Generate(%compiledclass, %code, "setup")
  do ##class(%Library.EnsembleMgr).EnableNamespace("SC")
  do EnableDeepSee^%SYS.cspServer("/csp/sc/")

}


ClassMethod installZPM(){
  s r=##class(%Net.HttpRequest).%New(),r.Server="pm.community.intersystems.com",r.SSLConfiguration="ISC.FeatureTracker.SSL.Config" d r.Get("/packages/zpm/latest/installer"),$system.OBJ.LoadStream(r.HttpResponse.Data,"c")
}

ClassMethod loadZPMPackage(){
  zpm "repo -r -n registry -url https://pm.intersystems.com -token 6wZUYCxDUZOyqSIxeta7wYZElZSDSthT"
  zpm "install isc-supply-chain"
}

}
