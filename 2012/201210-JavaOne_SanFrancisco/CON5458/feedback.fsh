@/* Conference Feedback Application Forge Script */;
@/* To run, start Forge Shell then input: "run feedback.fsh" */;

@/* Clear the terminal */;
clear;

@/* This means less typing. If a script is automated, or is not meant to be interactive, use this command */; 
set ACCEPT_DEFAULTS true;

@/* Create the new project layout */;
new-project --named feedback --topLevelPackage org.cedj.javaone2012.feedback --projectFolder feedback;

@/* Enable JPA, backed by Hibernate */;
persistence setup --provider HIBERNATE --container JBOSS_AS7;

@/* Enable Bean Validation, backed by Hibernate Validator */;
validation setup --provider HIBERNATE_VALIDATOR

@/* Make the entities */;
entity --named FeedbackEntry;
field string --named twitterHandle;
constraint NotNull --onProperty twitterHandle;
field string --named feedback;
constraint NotNull --onProperty feedback;

@/* Enable scaffolding from entities */;
scaffold setup;
scaffold from-entity org.cedj.javaone2012.feedback.model.*;
