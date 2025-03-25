# a-nandhu5-world-time-connector
This repo is sample to implement mulesoft connectors using xml sdk 

Steps to create a custom xml connector
1. Setup the settings.xml file first with the following profile:
   <profiles>
     <profile>
         <id>Mule</id>
         <activation>
             <activeByDefault>true</activeByDefault>
         </activation>
         <repositories>
             <repository>
                 <id>mulesoft-releases</id>
                 <name>MuleSoft Repository</name>
                 <url>http://repository.mulesoft.org/releases/</url>
                 <layout>default</layout>
             </repository>
         </repositories>
     </profile>
 </profiles>
 
2. Use the following maven command to generate the stub project:
   mvn archetype:generate                                       \
  -DarchetypeGroupId=org.mule.extensions                     \
  -DarchetypeArtifactId=mule-extensions-xml-archetype        \
  -DarchetypeVersion=1.2.0                                   \
  -DgroupId=org.mule.extension                               \
  -DartifactId=hello-mule-extension                          \
  -DmuleConnectorName=world-time-connector
   
3. Add the required properties, operations, body etc to the module section.
  
4. use "mvn clean install" or "mvn clean deploy" based on whether you want to install locally or to deploy to exchange.

credits: https://docs.mulesoft.com/mule-sdk/latest/xml-sdk
         https://github.com/mulesoft-labs/smart-connectors-integration-tests
         https://github.com/sidd-harth/mule4-mcd-level2/tree/main/hands-on-solutions/Section4/4.7/liveness-check
