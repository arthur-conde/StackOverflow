# StackOverflow
I have two solutions. The first solution outputs assemblies to /bin/Debug. The second solution references the assemblies in that folder and when it builds, outputs to /bin/Debug/AddOn.

How do I prevent the projects in the second solution from copying the assemblies it references in /bin/Debug into /bin/Debug/Addon without editing every single project file to set CopyLocal to False?

I'm trying to solve this problem using a Directory.Build.props that applies to projects within the second solution.

```xml
<Project>
  <ItemDefinitionGroup>
    <Reference Condition="$([System.String]::new('%(Reference.FullPath)').Contains('bin/Debug'))">
      <Private>false</Private>
    </Reference>
  </ItemDefinitionGroup>
</Project>
```

MSBuild evaluates $(Reference.FullPath) and a few other metadata to "", which means the assemblies get copied anyway.
