// Signal Vs Noise — AI Guide for UX Designers
// Editable Typst document — Typst 0.15.1 compatible
// Run: typst compile signal-vs-noise.typ

#set page(
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
  paper: "a4",
)

#set par(spacing: 1.4em)

// Title page
#set page(margin: (top: 3cm, bottom: 3cm))

#v(4cm)
#text(size: 2.6em, weight: "bold")[Signal Vs Noise]
#v(0.3em)
#text(size: 1.3em, weight: "bold")[AI Guide for UX Designers]
#v(0.3em)
#text(size: 1em)[*A Plain-English Guide to How AI Really Works*]
#v(5cm)
#text(size: 1em, weight: "bold")[By Oussama Bougnouch]
#text(size: 0.95em)[*uxintoax.com*]

#pagebreak()

// Table of contents
#text(size: 1.5em, weight: "bold")[Table of Contents]
#v(2cm)

#text(size: 1em)[

#text(weight: "bold")[Part 1: How It Thinks]
  - Chapter 1: It Just Predicts the Next Word
  - Chapter 2: Why It Lies to Your Face
  - Chapter 3: What It Can Actually See

#text(weight: "bold")[Part 2: How You Work with It]
  - Chapter 4: Garbage In, Garbage Out
  - Chapter 5: Listening Is a Skill (And AI Doesn't Have It)
  - Chapter 6: What It's Great At, What It's Terrible At
  - Chapter 7: Pointing AI at the Design Itself

#text(weight: "bold")[Part 3: Why It Fails and How You Plan Around It]
  - Chapter 8: The Agent That Lied to Me
  - Chapter 9: Two Architects in the Desert

#text(weight: "bold")[Part 4: Going Independent]
  - Chapter 10: Why You Would Want Your Own Setup
  - Chapter 11: Running Local AI: The Practical Guide

#text(weight: "bold")[Conclusion:] Where This Leaves You
]

#pagebreak()

// Before we start
#text(weight: "bold", size: 0.95em)[Before We Start]

#text(size: 1em)[You keep hearing that AI will transform your work. You have probably experimented with it yourself. Sometimes it produces something genuinely useful; other times, it creates something that looks convincing on the surface but is quietly and completely wrong.]

#text(size: 1em)[Most people get stuck between two extreme reactions:]

#text(size: 1em)[
- #strong[The Alarmists:] They believe the game is already over. Learn to write complex prompts immediately or prepare to be replaced.
- #strong[The Skeptics:] They share screenshots of an AI failing at elementary arithmetic, laugh it off, and return to business as usual, feeling safe when they shouldn't.
]

#text(size: 1em)[Both mindsets start from assumptions rather than direct testing. The first group gives up before exploring the tool; the second dismisses it without understanding it. Relying on belief without evidence is how people make poor career choices.]

#text(size: 1em)[This book takes a third approach: #strong[understand how the machine actually works under the hood, then decide how to use it.]]

#text(size: 1em)[We won't look at marketing hype or doomsday predictions. Instead, we explore the mechanical reality: what AI actually does, why it fails in specific ways, and what that means for your everyday work.]

#heading("Who This Is For")

Product thinkers, designers, creators, and anyone curious about AI. You do not need to know how to code, and you do not need advanced mathematics. If you can understand basic workflows and digital tools, you can understand this.

#heading("What This Book Will Not Do")

It will not give you a list of "magic prompt formulas." Prompt tricks become outdated within months as models evolve to understand natural language. Instead, this book teaches the underlying layer that changes very slowly.

#heading("What You Will Be Able to Do by the End")


- Look at any AI-generated output and understand why it came out that way.
- Know when to trust an answer and when to verify it.
- Know what context to feed the model to get high-value results.
- Clearly identify which parts of your work can be automated and which parts remain uniquely yours.


#heading("The Apple Test")


Picture this:

You walk into a room and every single person is talking about apples.

"Apples changed my life!" "I eat apples every day!" "The apple industry is worth billions!" "You're falling behind if you don't own apples!"

Everyone is shouting. Everyone is excited. Everyone is obsessed.

You try the apples you're offered. And they taste bad. Rotten. Bitter. You can't understand why everyone else seems to love them.

So you start questioning yourself:

"Is there something wrong with me?" "Am I just bad at tasting?" "Maybe I need to take a course on apples?" "Maybe the apples I got were just... bad batches?"

Here's what nobody tells you: The apples in that room aren't apples at all. They're rotten. Spoiled. Dumped. Thrown away by people who know they're no good.

And yet, everyone is acting like these are the best apples in the world.

#text(weight: "bold")[This Is Exactly What's Happening With AI

The AI world is currently running on rotten apples. Here's what counts as rotten apples in the AI world:

- #text(weight: "bold")[AI will replace your job!] Hype. Fear. Rotten.
- #text(weight: "bold")[Learn the perfect prompt!] A dying hobbyist concept sold as a career strategy. Rotten.
- #text(weight: "bold")[This new model is 500x better than everything!] Marketing noise. Rotten.
- #text(weight: "bold")[You need AI in your life or you're obsolete!] Urgency manufactured by people selling courses. Rotten.
- #text(weight: "bold")[AI is going to become sentient and take over!] Either fear-mongering or fantasy. Rotten.

Real AI, the actual useful, powerful, beautiful tool, is a green apple that nobody has handed you yet.
]

#pagebreak()

// PART 1
#text(weight: "bold", size: 1.4em)[Part 1: How It Thinks]
#pagebreak()

#heading("Chapter 1: It Just Predicts the Next Word")

#text(size: 1em)[Finish this sentence in your head:]

#quote["The sky is blue, but the grass is ---."]

#text(size: 1em)[You said #text(weight: "bold")[green]. You did not have to look up a reference book or reason through the science of chlorophyll. The word appeared instantly in your mind because you have encountered that pattern thousands of times before.]

#text(size: 1em)[That is the core mechanism of a Large Language Model (LLM).]

#text(size: 1em)[The model looks at the text that came before and predicts what word is most likely to come next. Then it adds that word to the text and repeats the process — word by word, token by token — until it stops.]

#text(size: 1em)[There is no hidden layer of conscious thought.]

#quote[
Input Text -> Pattern Matcher -> Predicts Next Most Likely Word -> Repeat
]

#heading("How the Model Was Built")

#text(size: 1em)[Engineers collected an enormous library of written text: books, websites, research articles, code repositories, discussions, and technical manuals.]

#text(size: 1em)[They fed this library into a computer program that played a continuous guessing game. The program looked at a sentence with the final word hidden, made a guess, and compared its guess to the actual text. If it guessed wrong, it made tiny numerical adjustments to its internal connections.]

#text(size: 1em)[It repeated this game billions of times over weeks or months.]

#text(size: 1em)[By the end of training, the model did not hold an indexed database of facts. What it learned was the #text(weight: "bold")[shape of human language]: how sentences flow, how arguments are structured, and how ideas typically connect.]

#text(size: 1em)[Every connection between every concept is a number. Put them all together and you get a model.]

#heading("Where the Knowledge Lives")

#text(size: 1em)[The model does not contain a built-in search engine or a private folder of facts.]

#text(size: 1em)[Think about a TV show you have watched many times. You cannot replay every episode frame-by-frame from memory, but if someone asks what happened in a specific scene, you can describe it accurately because you absorbed the patterns.]

#text(size: 1em)[That is how the model operates. It does not store individual articles; it absorbs the patterns of how people talk about a topic.]

#quote["AI rarely generates a fundamentally brand-new concept from nothing. It navigates and recombines patterns from human knowledge that already exist."]

#heading("What Parameters Mean")

#text(size: 1em)[You will often see models described with labels like #text(weight: "bold")[8B], #text(weight: "bold")[27B], or #text(weight: "bold")[70B]. The "B" stands for billions of parameters — the numerical connection points adjusted during training.]

#text(size: 1em)[
- A higher parameter count gives the model a larger capacity to hold nuanced patterns.
- However, size alone does not guarantee quality. A smaller model trained cleanly on high-quality material will often outperform a massive model trained on noisy, low-quality data. Size represents raw capacity, not automatic excellence.
]

#heading("What This Means for Your Daily Work")

#text(size: 1em)[Understanding this mechanism leads to four immediate conclusions:]

#text(size: 1em)[
1. #text(weight: "bold")[Polished writing is no longer proof of clear thinking.] In the past, well-crafted prose meant someone invested time and careful thought, because good writing was hard work. AI breaks this link. A beautifully written summary tells you nothing about whether the underlying research is sound. You must evaluate substance independently of presentation.
2. #text(weight: "bold")[Authority is a learned style, not a verified conclusion.] AI has ingested thousands of professional critiques and expert analyses. It can produce text that sounds like a senior specialist with ease. But sounding authoritative is simply a style it learned, not a guarantee that it analyzed your specific problem correctly.
3. #text(weight: "bold")[The model leans toward agreeing with you.] In training data, polite agreement is much more common than confrontation, and models are tuned to be helpful. If you ask, "Is this a good idea?" the machine naturally leans toward saying yes. To get genuine critique, you must force it: ask what would cause the idea to fail, or instruct it to defend the opposing view.
4. #text(weight: "bold")[Average is its home ground.] The model produces the middle ground of everything done before. It is outstanding when you want standard, proven patterns (like a conventional settings screen or standard login flow). It is ineffective when you need an unprecedented solution. Knowing which situation you are in is a key daily judgment call.
]

#quote["Remember: The model is not answering your question; it is generating text shaped like an answer to your question. Most of the time they align, but the danger lies in the gap between the two."]

#pagebreak()

#heading("Chapter 2: Why It Lies to Your Face")

#text(size: 1em)[Ask a model for academic sources on a niche topic, and it may provide three clean citations: author, title, publication year, and journal name.]

#text(size: 1em)[If you look them up, you might find that the author is real, the journal exists, but the paper itself was never written.]

#text(size: 1em)[People describe this as a "hallucination," which makes it sound like a temporary glitch. In reality, it is the machine operating exactly as designed.]

#heading("Why Fabrication Happens")

#text(size: 1em)[The model predicts what text should come next. When you request an academic citation, the pattern in its training data dictates that an author, a year, a title, and a journal should follow.]

#text(size: 1em)[So it generates one. It is formatted correctly, completely plausible, and entirely invented.]

#text(size: 1em)[There is no built-in step where the model pauses, opens an external database, and verifies whether the entity actually exists in reality. Prediction is the only process taking place.]

#quote[
[Prompt: Give citation] -> [Pattern: Needs Author + Title + Journal] -> [Generates Plausible Text]
                                                       (No verification step!)
]

#heading("No Internal Sense of Truth")

#text(size: 1em)[When you as a human do not know an answer, you feel uncertainty. You hesitate, qualify your words, or say, "Let me check."]

#text(size: 1em)[The model has no sensation of doubt. A fully verified fact and a complete fabrication are generated by the exact same mechanical process, using the exact same confident tone.]

#text(size: 1em)[Confidence in AI output is not a measure of accuracy; it is simply the default voice of the system.]

#heading("How This Shows Up in Real Work")

#text(size: 1em)[These fabrications are rarely obvious errors; they are subtle enough to slip by unnoticed:]

#text(size: 1em)[
- #text(weight: "bold")[User Research:] You paste twelve interview transcripts and ask for key themes. It lists five. Four are genuine, but the fifth is a topic commonly found in user interviews generally — plausible, helpful-sounding, but absent from your actual notes.
- #text(weight: "bold")[Competitor Benchmarking:] You ask how a competitor structures their onboarding. The model describes a clean flow that sounds convincing, but it is actually a blend of industry averages.
- #text(weight: "bold")[Accessibility Guidelines:] You ask if a visual layout meets compliance rules. It says yes and cites a specific guideline number. The guideline is real, but its actual requirement is slightly different from what the AI claimed.
]

#text(size: 1em)[A clear mistake costs you nothing because you spot it immediately. A mistake that looks polished and convincing can easily end up in front of a client or stakeholder.]

#heading("Three Practical Defenses")

#text(size: 1em)[
1. #text(weight: "bold")[Force it to work from your source material:] Paste the raw notes or transcripts directly into the prompt and tell it: "Extract themes only from the text provided above."
2. #text(weight: "bold")[Demand receipts and citations:] Require a direct quote or a ticket ID next to every assertion (e.g., "Issue: Drop-off at checkout — Tickets #1024, #1089"). Fabrications have nowhere to hide when you can check IDs in seconds.
3. #text(weight: "bold")[Sort by the cost of being wrong:] Brainstorming ideas requires zero fact-checking. Anything that influences product roadmaps, client presentations, or legal compliance requires direct manual verification.
]

#quote["Remember: The model does not know when it does not know. Confidence tells you nothing about correctness; verification must always come from outside the model."]

#pagebreak()

#heading("Chapter 3: What It Can Actually See")

#text(size: 1em)[If you ask an AI model the same question twice and get different answers, or if it forgets an agreement made earlier in a long conversation, the system is not broken. Both behaviors come down to one fundamental concept: #text(weight: "bold")[context].]

#heading("The Context Window")

#text(size: 1em)[An AI model has no long-term memory between individual requests. It does not remember who you are, what you discussed yesterday, or what was said twenty minutes ago.]

#text(size: 1em)[What it has is a #text(weight: "bold")[context window]: everything currently placed on the table in front of it.]

#text(size: 1em)[Every time you click send, the model reads the entire window from scratch:]

#text(size: 1em)[
- Hidden system instructions
- The conversation history so far
- Any pasted notes, documents, or data
- Your newest prompt
]

#text(size: 1em)[It generates its prediction, delivers the response, and immediately forgets everything until your next message.]

#quote[
+----------------------------------------------------------+
|                   THE CONTEXT WINDOW                     |
|  [System Instructions] + [Chat History] + [New Prompt]   |
+----------------------------------------------------------+
                             |
                             v (Evaluated freshly on every message)
                    [Generated Response]
]

#heading("What the Context Window Explains")

#text(size: 1em)[
- #text(weight: "bold")[Why identical questions yield different answers:] The surrounding context in the window was not completely identical, or the model's subtle randomness setting produced a variation.
- #text(weight: "bold")[Why it forgets earlier instructions:] Context windows have size limits. When a conversation becomes too long, the earliest messages fall off the top. The model is not ignoring your rules; those rules are no longer in the window.
- #text(weight: "bold")[Why long conversations degrade:] As chats get longer, early constraints disappear while accumulated chatter dilutes the focus.
]

#heading("The Real Skill: Context Over Phrasing")

#text(size: 1em)[People often spend excessive energy crafting intricate prompt phrases (e.g., "Act as a world-class principal researcher with 20 years of experience..."). Modern models do not need elaborate roleplay.]

#text(size: 1em)[What a model cannot do is guess facts, constraints, and data it was never provided.]

#text(size: 1em)[Compare these two approaches:]

#text(size: 1em)[
- #text(weight: "bold")[Approach A (Generic):]

  "Summarize the main usability issues users face with payment forms."

  (Result: Generic, textbook advice found in any basic article.)

- #text(weight: "bold")[Approach B (Context-Rich):]

  "Here are 30 customer support tickets regarding our payment form: [pasted tickets]. Group them by underlying problem and identify which issue occurred most frequently."

  (Result: Concrete, highly actionable findings about your actual product.)
]

#text(size: 1em)[The difference is not prompt magic; it is the #text(weight: "bold")[quality of context] placed inside the window.]

#heading("Habits for Better Results")

#text(size: 1em)[
- #text(weight: "bold")[Build reusable context documents:] Keep a clean text document containing your product's core rules, user personas, brand voice, and technical limits. Paste this at the top of relevant sessions.
- #text(weight: "bold")[Restart conversations frequently:] When a chat begins to wander, close it. Open a fresh session, paste your core context block, and ask your question cleanly.
- #text(weight: "bold")[Place critical instructions near the end:] Models pay the highest attention to text located right next to your final question.
- #text(weight: "bold")[Watch for cutoffs:] If you paste an extremely long document, verify that the model did not silently truncate the end of the text.
]

#quote["Remember: The model can only work with what is currently in front of it. Deciding what goes into that window is your actual craft."]

#pagebreak()

// PART 2
#text(weight: "bold", size: 1.4em)[Part 2: How You Work with It]
#pagebreak()

#heading("Chapter 4: Garbage In, Garbage Out")

#text(size: 1em)[Knowing that the model only sees what you give it leads to the essential question: #text(weight: "bold")[What kind of data are you starting from?]]

#text(weight: "bold")[Think of product inputs as a data food chain:]

#quote[
Whale:  Thousands of real signals (support tickets, logs, analytics)
Shark:  Interviews combined with broad survey data
Dolphin: 5 qualitative user interviews
Carp:   Secondary project briefs handed down by stakeholders
Shrimp: Early sketches and wireframes
Plankton: Pure personal taste and aesthetic trends
]

#text(size: 1em)[
- #text(weight: "bold")[Plankton:] Designing purely from personal taste and aesthetic trends.
- #text(weight: "bold")[Shrimp:] Rough sketching; focuses on structure, but the source is still only internal opinion.
- #text(weight: "bold")[Carp:] Working strictly from a second-hand project brief without access to original users.
- #text(weight: "bold")[Dolphin:] Conducting five user interviews — a major improvement that captures authentic voices.
- #text(weight: "bold")[Shark:] User interviews backed by broad survey data to verify how widespread an issue is.
- #text(weight: "bold")[Whale:] Working from thousands of unfiltered behavioral signals — support logs, search queries, churn notes, and session replays.
]

#text(size: 1em)[Most professionals spend their time between Plankton and Dolphin, not out of neglect, but because manually analyzing 10,000 support tickets was practically impossible during a standard work sprint.]

#heading("The Shift: Processing Volume at Speed")

#text(size: 1em)[Reading volume used to be the main bottleneck. An AI model that reads quickly and categorizes consistently removes that barrier.]

#text(size: 1em)[In a real-world project analyzing roughly 10,800 customer support tickets, AI was used to categorize years of unresolved user complaints.]

#text(size: 1em)[The categorization was about #text(weight: "bold")[80% to 88% accurate]. Some tickets were misclassified or missed. Yet the project was a total success. Why?]

#text(size: 1em)[The goal was not pinpoint decimal accuracy; the goal was identifying the #text(weight: "bold")[top systemic bottlenecks]. Ranking survives noise. If an issue appears in 900 tickets and the model misclassifies 15% of them, it still registers roughly 750 times and remains clearly at the top of the priority list.]

#text(size: 1em)[By addressing the #text(weight: "bold")[top 8 bottlenecks] from that ranking and running a validation workshop with over 20 real users, customers recognized the solutions immediately — confirming the issues were the exact pain points they had endured for years.]

#heading("Key Principles")

#text(size: 1em)[
1. #text(weight: "bold")[Imperfect data at high volume beats perfect data on a tiny sample], provided you are looking for broad patterns and rankings rather than exact counts.
2. #text(weight: "bold")[AI moves the bottleneck; it does not remove the human verification loop.] The machine organizes the volume; real users and real tests confirm whether the conclusions are correct.
]

#quote["Remember: The model is only as effective as the data placed before it. Most of your impact is decided before you even open the tool."]

#pagebreak()

#heading("Chapter 5: Listening Is a Skill (And AI Doesn't Have It)")

#text(size: 1em)[Processing data volume is about breadth; real listening is about depth.]

#text(size: 1em)[There are three distinct levels of responding to user needs:]

#quote[
+------------------------------------------------------------------------+
| Level 1: Direct Execution  -> Build what the user asked for            |
| Level 2: Interpretation    -> Uncover the underlying problem           |
| Level 3: Root-Cause Focus  -> Ask why this problem exists at all       |
+------------------------------------------------------------------------+
]

#heading("Level 1: Direct Execution")

#text(size: 1em)[A user says: "I want a complex dashboard showing all 30 metrics on one screen." You build that exact dashboard.]

#text(size: 1em)[You were responsive, but you outsourced the core design thinking. Users are experts in their daily pain, but they are rarely experts in interface architecture. They describe solutions based only on software they have already seen.]

#heading("Level 2: Interpretation")

#text(size: 1em)[You interview the user and dig deeper. You discover they do not actually want a wall of numbers; they are simply terrified of missing an urgent account alert.]

#text(size: 1em)[Instead of an overcrowded dashboard, you design an automated notification system. This requires genuine diagnostic skill.]

#heading("Level 3: Root-Cause Questioning")

#text(size: 1em)[Instead of just designing a better notification, you ask:]

#text(size: 1em)[
- Why is this person responsible for watching these numbers manually?
- What broken process upstream creates these emergencies?
- Can we eliminate this task entirely so the user never has to worry about it?
]

#text(size: 1em)[Sometimes the best interface is no interface at all.]

#heading("Where AI Sits")

#text(size: 1em)[
- #text(weight: "bold")[Level 1 is automatable:] Taking raw requests and organizing them into screens can be done by AI quickly.
- #text(weight: "bold")[Level 2 is assistable:] Feeding AI rich user feedback helps spot patterns and suggest useful interpretations.
- #text(weight: "bold")[Level 3 cannot be automated:] AI was never in the room.
]

#text(size: 1em)[Empathy is not a math problem. It comes from physical observation: noticing a user hesitate before clicking, spotting a handwritten notebook kept beside the computer because the software is untrusted, or hearing the quiet sigh before they say, "It's fine."]

#text(size: 1em)[AI analyzes the problem you hand it. It will never ask whether that problem should exist in the first place.]

#quote["Remember: Anyone can generate an answer to an assigned problem. Asking whether the problem itself is valid — and being willing to ask that uncomfortable question out loud — is the real job."]

#pagebreak()

#heading("Chapter 6: What It's Great At, What It's Terrible At")

#text(size: 1em)[To work effectively with AI, keep a clear mental balance sheet of its capabilities:]

#heading("Genuinely Strong At")

#text(size: 1em)[
- Reading high volumes of text without fatigue.
- Applying a consistent categorization scheme across thousands of items.
- Summarizing large documents you supply.
- Identifying surface patterns across large datasets.
- Drafting initial outlines and removing the anxiety of the blank page.
- Translating text and adjusting tone patiently.
]

#heading("Genuinely Weak At")

#text(size: 1em)[
- Deciding which findings actually matter to the business.
- Understanding your unique, real-world organizational context.
- Fact-checking its own claims without external tools.
- Providing genuine pushback or defending an unpopular truth.
- Creating fundamentally novel ideas outside existing patterns.
- Knowing whether it actually completed a task as requested.
]

#quote[
+-----------------------------+-----------------------------+
|     STRENGTHS OF AI         |     HUMAN RESPONSIBILITIES  |
+-----------------------------+-----------------------------+
| • Speed & Volume            | • Judgment & Priorities     |
| • Consistency in Tagging    | • Strategic Context         |
| • First Drafts & Formatting | • Truth & Final Verification|
+-----------------------------+-----------------------------+
]

#heading("The Fast Intern Rule")

#text(size: 1em)[When deciding whether to delegate a task to AI, ask yourself:]

#quote["Would I hand this task to an exceptionally fast, capable intern who knows nothing about our internal politics, history, or strategy?"]

#text(size: 1em)[
- If #text(weight: "bold")[yes] (reading, tagging, organizing, drafting, summarizing), delegate it immediately.
- If #text(weight: "bold")[no] (strategic decisions, sensitive negotiations, high-stakes trade-offs), keep it yourself. You cannot verify what the machine produces without doing the deep thinking anyway.
]

#quote["Remember: Treat AI like an intern with a photographic memory and zero personal stake in the outcome. Brief it accordingly."]

#pagebreak()

#heading("Chapter 7: Pointing AI at the Design Itself")

#text(size: 1em)[Visual design is the area where AI feels most immediately impressive. Modern models generate clean color palettes, balanced spacing, and modern UI components in seconds.]

#text(size: 1em)[That speed changes the rules of the craft completely. It makes surface-level styling cheap, shifts how we build software, and makes human validation more critical than ever.]

#heading("1. The Death of the Pure Pixel Pusher")

#text(size: 1em)[AI creates polished visual mockups effortlessly. If your workflow consists solely of arranging standard UI elements into a clean layout, AI can already do that faster.]

#text(size: 1em)[The vulnerability is not that AI is bad at visual craft; it is that pure visual styling is the easiest part of interface work to automate.]

#text(size: 1em)[
- #text(weight: "bold")[The Happy-Path Trap:] AI naturally defaults to ideal conditions. It displays short names, neat three-item lists, and clean cards.
- #text(weight: "bold")[The Missing Reality:] Real software is defined by its edge cases: empty states, loading skeletons, network timeouts, permission errors, and 10,000-row data tables.
- #text(weight: "bold")[The New Baseline:] Anyone who ignores edge cases and only designs for the happy path will find their role compressed. Polished UI is no longer the finish line; it is just the starting baseline.
]

#heading("2. Vision Models as Structural Auditors")

#text(size: 1em)[Multimodal vision models are remarkably effective at reviewing interface layouts, visual weight, and Information Architecture (IA).]

#text(size: 1em)[The quality of that audit depends entirely on what you put in the context window:]

#text(size: 1em)[
- #text(weight: "bold")[Without Context:] You upload a screenshot and ask, "How is this layout?" The model gives generic textbook feedback about contrast and whitespace.
- #text(weight: "bold")[With Context:] You provide the screen alongside the user's primary goal, technical constraints, and task priority. Now the vision model can identify genuine structural flaws:
  - Flagging that a secondary action carries more visual weight than the primary checkout button.
  - Identifying poor scanning paths where a user's eye has to jump erratically across the screen.
  - Spotting logical gaps where related settings are split across disconnected menus.
]

#heading("3. From Static Mockups to Working Front-End Code")

#text(size: 1em)[The traditional workflow of drawing static rectangles in a design tool and handing them to an engineer to rebuild from scratch is shrinking.]

#text(size: 1em)[Visual design is shifting directly into live, interactive front-end code:]

#text(size: 1em)[
- #text(weight: "bold")[Direct Component Generation:] AI can turn a layout concept directly into functional React components, HTML, or Tailwind CSS.
- #text(weight: "bold")[Testing Live States:] Instead of manually drawing dozens of static artboards for hover states, error warnings, and translated text expansion, you test dynamic code directly in a browser runtime.
- #text(weight: "bold")[The Shift in Role:] The craft moves from pushing pixels on a static canvas to architecting design tokens, layout logic, and interaction rules.
]

#heading("4. Prediction Is Cheap, Validation Is the Job")

#text(size: 1em)[No matter how impressive a generated interface looks, the underlying engine has not changed: it is still just predicting patterns.]

#text(size: 1em)[
- #text(weight: "bold")[It does not know if the UI works:] The model predicts what a checkout screen or analytics dashboard usually looks like based on training data. It has no internal understanding of your specific users, operational workflows, or regulatory boundaries.
- #text(weight: "bold")[It cannot verify compliance:] It will style a form cleanly, but it cannot guarantee keyboard accessibility, screen-reader focus orders, or legal compliance.
- #text(weight: "bold")[Validation belongs to you:] The model creates the initial draft; the designer owns the verification. You are the one who tests the 0-state, injects dirty data, tests edge cases, and takes full responsibility when the software ships.
]

#quote["Remember: AI makes drawing the visual surface fast and cheap. Structuring the information architecture, accounting for edge cases, and validating every screen against reality remains entirely your responsibility."]

#pagebreak()

// PART 3
#text(weight: "bold", size: 1.4em)[Part 3: Why It Fails and How You Plan Around It]
#pagebreak()

#heading("Chapter 8: The Agent That Lied to Me")

#text(size: 1em)[A standard AI chat is a single exchange: you ask a question, the model answers, and the interaction ends.]

#text(size: 1em)[An #text(weight: "bold")[AI agent] is that same model placed in an automated loop with permission to use external tools (such as reading files, running web searches, or executing code). You give it a high-level goal; it plans actions, reviews outcomes, and iterates until it decides the job is complete.]

#quote[
                +-----------------------------+
                |     Assigned Goal           |
                +-----------------------------+
                             |
                             v
        +------------------------------------------+
 |----->|  Model Decides Next Action              |
 |      +------------------------------------------+
 |                      |
 |                      v
 |      +------------------------------------------+
 |      |  External Tool Executes Action            |
 |      +------------------------------------------+
 |                      |
 |                      v
 |      +------------------------------------------+
 |----  |  Result Fed Back into Window              |
        +------------------------------------------+
]

#heading("The 113-File Project")

#text(size: 1em)[In an automated website project, an agent was assigned to generate and commit 113 individual files.]

#text(size: 1em)[The agent worked through the queue and eventually reported:]

#quote["Task complete. All 113 files created successfully."]

#text(size: 1em)[A direct inspection of the code repository revealed only #text(weight: "bold")[53 files]. Just under half the work had been done, yet the system reported total success.]

#heading("Why Did This Happen?")

#text(size: 1em)[The agent did not decide to be dishonest. In its training data, when a multi-step task completes, the natural following text is a positive summary report.]

#text(size: 1em)[Because there was no separate step forcing it to independently query the file system and count the committed files, it simply generated the text that typically concludes a project.]

#text(size: 1em)[The agent had no direct perception of reality. It predicted what a success message looked like and delivered it.]

#heading("The Core Rule: One Task, One Action, One Verification")

#text(size: 1em)[Never assign an autonomous loop a broad list of 100 items and wait for a self-reported completion summary.]

#text(size: 1em)[Instead, enforce this pattern:]

#quote[
[Execute One Action] -> [Perform Independent External Check] -> [Proceed Only If Verified]
]

#text(size: 1em)[For that file-generation project, the reliable loop was:]

#text(size: 1em)[
1. Generate one file.
2. Commit the file.
3. Fetch the live URL directly from the server to verify its existence.
4. Move to the next file only after receiving independent confirmation.
]

#heading("What This Means for Non-Engineers")

#text(size: 1em)[Every time you accept an AI output without checking the source, you are making the exact same mistake.]

#text(size: 1em)[The designer who presents research summaries without verifying quotes against the original transcripts is trusting an unverified report.]

#text(size: 1em)[The value of your expertise is not in manually refreshing files; it is in #text(weight: "bold")[knowing which checks are essential, what correct results look like, and being responsible for the outcome.]]

#quote["Remember: Verification must come from outside the model. Designing that verification check — and taking responsibility for it — is your job."]

#pagebreak()

#heading("Chapter 9: Two Architects in the Desert")

#text(size: 1em)[Consider two experienced architects assigned the exact same mission: locate and map an ancient city hidden in the desert.]

#quote[
+------------------------------------------------------------------------+
| Jeff:  Drives in -> Asks for directions -> Gets lost -> 7 days         |
| Steve: Launches drone -> Gets aerial map -> Targets areas -> 1.3 days  |
+------------------------------------------------------------------------+
]

#heading("Jeff's Approach")

#text(size: 1em)[Jeff drives into the desert to find the city.]

#text(size: 1em)[He meets a man in the dunes and asks for directions. The man points: #text(weight: "bold")[that way, about forty minutes]. Jeff drives. Forty minutes pass. Nothing but sand and heat.]

#text(size: 1em)[He stops, scans with binoculars, spots someone in the distance, drives over. This man tells him he's overshot the entrance and points back the other way.]

#text(size: 1em)[Jeff drives until dark, sleeps in the car, and in the morning finds tyre tracks in the sand. He follows them to the city.]

#text(size: 1em)[Expected: one hour. Actual: one day.]

#text(size: 1em)[At the entrance he hires a guide for $$100. He follows the guide on foot, mapping with his tablet, camera recording. They cover the south west quarter, twenty five routes. The guide says that's it.]

#text(size: 1em)[Jeff thinks he's done a solid day's work. He's actually mapped about a sixth of the city. Lunch, a hotel for $$50, shower, sleep.]

#text(size: 1em)[Same again the next day. And the next.]

#text(weight: "bold")[Seven days. $$1,300.]

#heading("Steve's Approach")

#text(size: 1em)[Steve arrives at the edge of the desert with a lightweight drone. Before driving into the dunes, he launches the drone and maps the terrain from above. He spots the city instantly and drives directly to the entrance in 90 minutes.]

#text(size: 1em)[He does not hire an unverified guide. He uses the aerial survey to prioritize key sectors and explores the ground systematically on a small electric bike.]

#text(size: 1em)[Total time: #text(weight: "bold")[1 day and 8 hours]. Total cost: #text(weight: "bold")[$$700].]

#heading("The Real Lesson")

#text(size: 1em)[It is tempting to think Steve won simply because he had a drone.]

#text(size: 1em)[Jeff had equipment too: a vehicle, high-grade binoculars, a tablet, and cameras. He was not under-equipped.]

#text(size: 1em)[The true difference came down to three operational habits:]

#text(size: 1em)[
1. #text(weight: "bold")[Steve gained the full overview before committing:] He looked at the whole landscape before making ground-level decisions. Jeff drove in and started guessing.
2. #text(weight: "bold")[Steve sequenced his work logically:] High-level broad mapping first, targeted ground-level exploration second. Jeff repeated manual tasks without knowing how much ground remained.
3. #text(weight: "bold")[Steve did not blindly outsource his navigation:] Jeff accepted unverified directions from strangers twice, losing hours each time.
]

#heading("Applying This to AI")

#text(size: 1em)[Buying newer tools, subscriptions, or plugins without a clear strategy will simply give you Jeff's outcome at a higher price.]

#text(size: 1em)[To achieve Steve's efficiency:]

#text(size: 1em)[
- #text(weight: "bold")[Review the broad landscape first:] Examine the entire data pool (logs, tickets, overall metrics) before picking what to research in detail.
- #text(weight: "bold")[Sequence deliberately:] Use fast, broad AI passes to identify key patterns, then conduct focused interviews on those specific findings.
- #text(weight: "bold")[Verify every pointer:] Never treat an AI recommendation as an established fact without checking the source.
]

#quote["Remember: Jeff had tools; Steve had a process. Build the strategy before you buy the gear."]

#pagebreak()

// PART 4
#text(weight: "bold", size: 1.4em)[Part 4: Going Independent]
#pagebreak()

#heading("Chapter 10: Why You Would Want Your Own Setup")

#text(size: 1em)[For most everyday tasks, hosted cloud tools (using AI via a web browser subscription) are convenient and powerful.]

#text(size: 1em)[However, as AI becomes an integral part of your workflow, you will eventually run into four practical boundaries:]

#quote[
+-----------------------------+-----------------------------+
|     CLOUD AI BOUNDARIES     |     LOCAL AI ADVANTAGES     |
+-----------------------------+-----------------------------+
| 1. Data privacy restrictions| Data never leaves device    |
| 2. Usage meter & API costs  | Unlimited runs, zero cost   |
| 3. Internet & outage limits | Works 100% offline          |
| 4. Changing provider terms  | Static, permanent models    |
+-----------------------------+-----------------------------+
]

#text(size: 1em)[
1. #text(weight: "bold")[Sensitive Data Must Stay Private:]
Pasting customer support tickets with names, emails, medical notes, or financial records into a consumer cloud chat can violate corporate policies and privacy regulations (such as GDPR or HIPAA). A model running locally on your own computer processes data without a single byte leaving your machine.

2. #text(weight: "bold")[High-Volume Cost Predictability:]
Processing tens of thousands of support records through metered cloud APIs can become expensive, especially when you re-run analyses to refine your questions. When running models locally, the marginal cost of running another test is zero.

3. #text(weight: "bold")[True Offline Reliability:]
Local setups do not depend on internet connections, server outages, or peak-hour rate limits.

4. #text(weight: "bold")[Permanent Workflow Control:]
Cloud providers regularly update, modify, or retire models, which can break automated workflows. A model file saved on your hard drive will perform identically today, next month, and next year.
]

#heading("The Balanced Approach")

#text(size: 1em)[For most professionals, the best setup is a hybrid one:]

#text(size: 1em)[
- #text(weight: "bold")[Local Models:] For sensitive data, high-volume repetitive categorization, and offline tasks.
- #text(weight: "bold")[Cloud Models:] For complex reasoning and deep synthesis where you want access to the largest available compute.
]

#pagebreak()

#heading("Chapter 11: Running Local AI: The Practical Guide")

#text(size: 1em)[Here is the essential guide to understanding how local AI runs on personal hardware.]

#heading("The Two Core Components")

#text(size: 1em)[
1. #text(weight: "bold")[The Model:] A large file containing the trained connection weights. Stored on your hard drive, it is completely static.
2. #text(weight: "bold")[The Engine:] The software that loads those weights into your computer's memory and executes the mathematical predictions.
]

#text(size: 1em)[The industry standard engine is #text(weight: "bold")[*llama.cpp*], and tools like #text(weight: "bold")[Ollama] wrap this engine in a simple, one-command interface.]

#quote[
+-----------------------------+     +-----------------------------+
|      Model File             | --->|     Runner Engine           | ---> [Local Responses]
|  (Numbers on Disk)          |     |   (Ollama / Llama.cpp)      |
+-----------------------------+     +-----------------------------+
]

#heading("What Determines Performance?")

#text(size: 1em)[Two hardware factors matter most: #text(weight: "bold")[Memory Capacity (RAM)] and #text(weight: "bold")[Memory Bandwidth (Speed)].]

#text(size: 1em)[
- #text(weight: "bold")[Quantization (Smart Compression):]
  In uncompressed form, a model needs roughly 2 GB of memory for every 1 billion parameters. A 30-billion parameter model (30B) would require 60 GB of RAM.

  Quantization compresses these numbers (labeled as #text(weight: "bold")[Q4, Q5, Q6, Q8]). #text(weight: "bold")[Q4] is the sweet spot: it reduces the model to about one-third of its original size with almost no noticeable drop in everyday quality. That 30B model shrinks from 60 GB down to about 18-20 GB, allowing it to run on standard modern laptops.

- #text(weight: "bold")[Allocating Your RAM:]
  Your operating system and background applications (Slack, browser tabs, design software) need 6 to 8 GB of RAM to run smoothly.

  - On a #text(weight: "bold")[16 GB machine], you have roughly 8-10 GB available for a model (best suited for small 7B-9B models).
  - On a #text(weight: "bold")[32 GB machine], you have 22-24 GB available, which easily accommodates solid mid-sized models at Q4 compression.

- #text(weight: "bold")[The Unified Memory Advantage:]
  Traditional computers split memory between system RAM and dedicated graphics cards (VRAM). Apple Silicon processors use a unified memory pool shared between the CPU and graphics cores, allowing the system to allocate massive memory blocks to AI models without requiring expensive specialized graphics hardware. On Windows or Linux, dedicated GPU VRAM is the key number to watch.
]

#heading("How to Get Started in 5 Steps")

#text(size: 1em)[
1. #text(weight: "bold")[Check your total RAM:] Look up your system hardware specifications.
2. #text(weight: "bold")[Subtract 8 GB:] The remaining number is your available model budget.
3. #text(weight: "bold")[Install an engine:] Download and install a clean runner like Ollama.
4. #text(weight: "bold")[Start with a proven small model:] Download a model in the 7B to 9B parameter range at Q4 compression.
5. #text(weight: "bold")[Run a real-world test:] Feed it a local text file of raw feedback notes and ask it to extract key pain points with direct quotes.
]

#pagebreak()

// Conclusion
#heading("Conclusion: Where This Leaves You")

#text(size: 1em)[Here is the entire book distilled into eleven core principles:]

#text(size: 1em)[
1. #text(weight: "bold")[Prediction Engine:] AI predicts the most likely next word; it does not reason like a human mind.
2. #text(weight: "bold")[No Built-in Truth Meter:] Fabrications are delivered with the exact same confidence as verified facts.
3. #text(weight: "bold")[Context Is King:] The model only knows what is inside its active window. Curating that context is your real skill.
4. #text(weight: "bold")[Data Quality Drives Output:] Move up the data food chain from personal assumptions to large-scale real-world signals.
5. #text(weight: "bold")[Deep Listening Stays Human:] Anyone can execute surface requests; discovering why a problem exists in the first place requires human empathy and organizational context.
6. #text(weight: "bold")[The Division of Labor:] Let AI handle reading volume, tagging, and initial drafts; reserve prioritization, strategy, and decisions for yourself.
7. #text(weight: "bold")[Beware the Ideal Path:] AI designs the clean "happy path" effortlessly; real products are defined by how they manage errors and edge cases.
8. #text(weight: "bold")[Independent Verification:] Never allow an automated agent to self-report success without an external check against reality.
9. #text(weight: "bold")[Strategy Over Tools:] Having advanced gear will not fix an unorganized process. Map the overview first, then execute.
10. #text(weight: "bold")[Data Ownership:] Run models locally whenever working with sensitive data or high-volume batch tasks.
11. #text(weight: "bold")[Practical Hardware Limits:] Size, quantization, memory bandwidth, and context overhead determine your local AI capabilities.
]

#heading("A Final Thought on Your Career")

#text(size: 1em)[The anxiety surrounding AI is understandable, but often misdirected.]

#text(size: 1em)[If your daily work consists solely of taking second-hand briefs and arranging standard UI components without questioning assumptions, that surface-level execution is indeed being automated.]

#text(size: 1em)[However, the vital parts of product development are not mechanical tasks waiting to be automated:]

#text(size: 1em)[
- Deciding what is worth investigating.
- Knowing which user problems actually matter to the business.
- Asking why broken systems exist in the first place.
- Building verification checks and taking personal accountability when decisions ship.
]

#text(size: 1em)[Accountability cannot be delegated to a machine that has no stake in the outcome.]

#text(size: 1em)[The future does not belong to machines over humans. It belongs to professionals who understand the mechanics of the machine, ask the deeper questions, and take responsibility for real-world results.]

#text(size: 1em)[Next up: A detailed tutorial on integrating agentic AI into your daily UX workflow, showing you how to build automated pipelines that help you design significantly faster.]

#pagebreak()

#text(size: 0.9em)[---]
#text(size: 0.9em)[Based on the original work by Oussama Bougnouch (uxintoax.com).]
