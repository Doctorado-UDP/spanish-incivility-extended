# spanish-incivility-extended
**Digital Incivility in Spanish**

[![Coverage](https://raw.githubusercontent.com/Doctorado-UDP/spanish-incivility-extended/refs/heads/main/badges/coverage_01.svg)](https://github.com/Doctorado-UDP/spanish-inicivility-extended/tree/main/data/raw) [![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://raw.githubusercontent.com/Doctorado-UDP/spanish-incivility-extended/refs/heads/main/badges/active.svg)](STATUS.md) [![License](https://raw.githubusercontent.com/Doctorado-UDP/spanish-incivility-extended/refs/heads/main/badges/badges/gnu.svg)](LICENSE-GPL.md) [![License](https://raw.githubusercontent.com/Doctorado-UDP/spanish-incivility-extended/refs/heads/main/badges/cc_by_4_0.svg)](LICENSE-CC.md)

## Overview

The Gold Standard for Toxicity and Incivility Project asked coders to assign each Spanish-language tweet to one of two categories: toxic or nontoxic. This annotation work followed the definitions provided by Google’s Perspective API: “Classify the category of the comment as either TOXIC or NONTOXIC. TOXIC: Rude, disrespectful, or unreasonable comments that are likely to make someone leave the discussion or stop sharing their perspective. NONTOXIC: Civil or nice comments that are unlikely to discourage conversation.” Every message was annotated twice, yielding excellent intercoder agreement (Cohen’s kappa = 0.94; Krippendorff’s alpha = 0.94). This binary labelling delivered an effective benchmark for Large Language Models (LLMs) experiments, however, it collapses heterogeneous forms of abusive speech into a single class, preventing downstream models from learning how different types of harm interact with context or severity.

To preserve comparability while enriching analytical value, we extend the scheme using a two-layer ontology:

-	**First layer (presence).** The binary TOXIC/NONTOXIC label is re-evaluated, with greater stringency on intercoder agreement.
-	**Second layer (facet).** If a message is toxic, coders specify which sub-types apply: identity attack, insult, profanity or threat. Multiple facets may be assigned where appropriate.

Perspective API definitions:

-	**Identity attack.** Negative or hateful comments targeting someone because of their identity.
-	**Insult.**	Insulting, inflammatory, or negative comments towards a person or a group of people.
-	**Profanity.** Swear words, curse words, or other obscene or profane language.
-	**Threat.** Describes an intention to inflict pain, injury, or violence against an individual or group.

## Annotation Task

We are relabelling the protest events sample from the Gold Standard for Toxicity and Incivility Project (n = 1,000), focused on protests against the coronavirus and judicial reform measures in Argentina during August 2020, and the social outburst in Chile stemming from protests against the underground fare hike in October 2019. This corresponds to a balanced sample, based on a toxicity probability score from a DistilBERT model applied to the complete data set (almost 5 million data points).

In addition, we are also labelling the TextDetox data in Spanish, split 70/15/15 for a multilingual toxic speech detection benchmark (see González-Bustamante, 2025). We focused on the training data, comprising 3,500 messages.

In sum, the entire task comprises 4,500 messages that three independent coders will annotate in Labelbox. Thus, the target is 13,500 accepted labels. 

## Blinding and Allocation

Coders are blind to one another’s labels throughout the process. No coder can see another coder’s decision during active labelling. Item allocation is via a randomised queue with locked assignment to prevent cherry-picking and ensure an even distribution of straightforward and borderline cases. 

## Relabelling and Quality

We aim for 85-90% 3/3 agreement on the first layer (TOXIC/NONTOXIC) across the final corpus. At the item level, a 2/3 majority is sufficient for acceptance. Items falling to reach 2/3 after one additional pass are resolved by expert adjudication. For the second layer (facets), we accept 2/3 agreement per facet and allow multiple facets to reflect co-occurrence (insults and threats). This approach preserves rigorous presence while avoiding unnecessary relabelling on inherently ambiguous facet boundaries.

## Participants 

Annotators will be native Spanish speakers enrolled in “Introduction to Machine Learning, Language Models and AI in Social Sciences.” Considering cohort size and a 15-30% relabel overhead, about 750 accepted labels (typically requiring more than 1,000 attempts) per student are expected during the annotation period. Incentives are tied to **accepted labels**, which involve agreement and, therefore, reflect quality as well as throughput.

## Authors

Bastián González-Bustamante \
bastian.gonzalez.b@mail.udp.cl \
[ORCID iD 0000-0003-1510-6820](https://orcid.org/0000-0003-1510-6820) \
https://bgonzalezbustamante.com

## CRediT - Contributor Roles Taxonomy

We use CRediT (Contributes Roles Taxonomy), which includes 14 roles representing tasks typically performed by contributors to scholarly output, describing each contributor’s specific contribution.

Co-authorship will be awarded to students who achieve more than **1,000 accepted labels** during the annotation period.

## CRediT - Contributor Roles Taxonomy

Bastián González-Bustamante ([ORCID iD 0000-0003-1510-6820](https://orcid.org/0000-0003-1510-6820)): Conceptualisation, data curation, formal analysis, funding acquisition, investigation, methodology, project administration, resources, software, supervision, and validation.

Javier Fernández ([ORCID iD 0000-0002-1660-3944](https://orcid.org/0000-0002-1660-3944)): Investigation and resources.
