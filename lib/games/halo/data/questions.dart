import 'package:know_the_game/games/halo/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    "Acrobatic",
    [
      "Each enemy killed by this model counts as 2 kills.",
      "This model's kills contribute double towards victory conditions.",
      "This model is exceptionally agile, doubling the impact of each kill.",
      "This model's kills are twice as effective for scoring purposes.",
    ],
  ),
  QuizQuestion(
    "Active Camouflage",
    [
      "Ranged attacks targeting this model do not gain clear shot, high ground, or crouched modifiers if this model has fully charged energy shields.",
      "This model blends into the environment, making ranged targeting difficult when fully shielded.",
      "With full energy shields, this model is nearly impossible to target at range.",
      "Fully charged energy shields provide this model with advanced camouflage against ranged attacks.",
    ],
  ),
  QuizQuestion(
    "Blast",
    [
      "Models in all cubes adjacent to the explosion (in all directions) have 1 energy shield depleted.",
      "The shockwave from the explosion disrupts nearby models' energy shields.",
      "The explosion's force bleeds energy from shields in adjacent cubes.",
      "Nearby models suffer energy shield depletion due to the blast.",
    ],
  ),
  QuizQuestion(
    "Continuous Fire",
    [
      "Weight of Fire (2). After the action, make a 3 dice SURVIVE test (2). On a fail take 1 wound (no armour or energy shields).",
      "This model unleashes a torrent of fire, then must test their own resilience.",
      "After firing, this model risks injury from the weapon's recoil.",
      "This model's sustained fire puts them at risk of harm.",
    ],
  ),
  QuizQuestion(
    "Energy Shield",
    [
      "Starts the game with (n) energy shields. At the start of each round, regain 1 depleted energy shield.",
      "This model's energy shields automatically recharge at the start of each round.",
      "This model has a personal energy field that restores itself each round.",
      "This model's energy shields replenish automatically.",
    ],
  ),
  QuizQuestion(
    "Energy Shield Barrier",
    [
      "Protects every model in the same cube against ranged attacks. Remove shields from the barrier first, then from the model’s energy shield. They do not regenerate.",
      "This model projects a protective barrier that absorbs ranged attacks, shielding models in the same cube.",
      "This model's barrier provides cover against ranged attacks for all models in the same cube.",
      "Ranged attacks are absorbed by this model's barrier, protecting models within the same cube.",
    ],
  ),
  QuizQuestion(
    "Energy Shield Depleter (ESD)",
    [
      "When a model takes hits, deplete (n) energy shields from the target model.",
      "This model's attacks drain the target's energy shields.",
      "This model's attacks disrupt the target's energy shields.",
      "This model's attacks are designed to drain energy shields.",
    ],
  ),
  QuizQuestion(
    "Evade",
    [
      "When unpinned and is the target of a SHOOT action and then is free to move, may make a 1 cube ADVANCE action (which may trigger an ASSAULT action).",
      "This model can quickly reposition when targeted by ranged attacks, potentially leading to an assault.",
      "This model can dodge ranged attacks and reposition, possibly initiating an assault.",
      "This model can evade ranged attacks and reposition, potentially triggering an assault.",
    ],
  ),
  QuizQuestion(
    "Explosive",
    [
      "SHOOT action targeting a cube in LOS: 3 dice RANGED test (1) with no modifiers or rerolls. If successful, target cube is hit. If failed, scatter to find which adjacent cube on the same level is hit instead. Explosive weapons do not bounce off solid walls. Now resolve the type of attack on the affected cube.",
      "This model's attacks can hit the target cube, or scatter to a nearby cube if the initial attack misses.",
      "This model's attacks can hit the target cube, or scatter to a neighboring cube.",
      "This model's attacks can hit the target cube, or scatter to an adjacent cube on the same level.",
    ],
  ),
  QuizQuestion(
    "Fast Transition",
    [
      "Can SHOOT (short action only) with 2 ranged weapons separately, targeting the same or different enemy models. If using a command die SHOOT symbol, only gain 1 extra SHOOT action from one of the available weapons.",
      "This model can rapidly fire two ranged weapons, at the same or different targets.",
      "This model can quickly switch between two ranged weapons.",
      "This model can fire two ranged weapons in a single action, at the same or different targets.",
    ],
  ),
  QuizQuestion(
    "Fearless",
    [
      "Can never be pinned, though additional effects from the same attack may apply.",
      "This model is immune to being pinned, no matter how many attacks they suffer.",
      "This model's courage makes them immune to pinning.",
      "This model's unwavering resolve prevents them from being pinned.",
    ],
  ),
  QuizQuestion(
    "Firing Platform",
    [
      "+n dice when performing a SHOOT.",
      "This model is a stable platform for ranged attacks, adding extra dice to their shooting.",
      "This model is a stable firing platform, enhancing their ranged attacks.",
      "This model's stability enhances their ranged attacks.",
    ],
  ),
  QuizQuestion(
    "Flight",
    [
      "Can move through cubes without walls or floors, and may change levels without climbing. If the model falls, it does not take damage or is pinned.",
      "This model can traverse any cube, regardless of walls or floors, and can change levels without climbing.",
      "This model can fly over any terrain and change levels freely.",
      "This model's flight allows them to ignore terrain and move between levels.",
    ],
  ),
  QuizQuestion(
    "Frag",
    [
      "After rolling to hit with a weapon using the Explosive or Grenade keywords, roll a (n) dice 4+ test (X) for the strength of the attack (no modifiers or rerolls). All models in the target cube separately roll 3 dice SURVIVE tests (X).",
      "This model's attacks can hit multiple targets in a cube, with the strength of the attack determined by a separate test.",
      "This model's attacks can hit multiple targets in a cube, with the strength of the attack determined by a separate dice roll.",
      "This model's attacks can hit multiple targets in a cube, with the strength of the attack determined by a dice roll.",
    ],
  ),
  QuizQuestion(
    "Frag More Successes",
    [
      "Difference in successes is # of hits.",
      "The number of hits is determined by the difference in successes between the attack and the defense.",
      "The number of hits is determined by the difference in successes.",
      "The number of hits is determined by the difference in successes between the attack and the defense.",
    ],
  ),
  QuizQuestion(
    "Grenade",
    [
      "Thrown using a SHOOT. Choose a target cube within range. If you do not have LOS, both the shooting model and the target cube must be visible when viewed from directly above. Roll a 3 dice RANGED test (1) (no modifiers or rerolls). If successful the grenade lands in the target cube. If failed, scatter roll to find which cube the grenade detonates in. A grenade scattering through a solid wall or the board edge bounces off it and stays in the original target cube.",
      "This model can throw grenades to a target cube, even without direct line of sight.",
      "This model can throw grenades to a target cube, with the scatter determined by a dice roll.",
      "This model can throw grenades to a target cube, with the scatter determined by a dice roll.",
    ],
  ),
  QuizQuestion(
    "Horde",
    [
      "During close combat, gain the friendly model bonus, plus an additional +1 die modifier for each friendly model in the same cube (not counting itself) that also has this keyword.",
      "This model is more effective when fighting alongside others with the same keyword.",
      "This model gains strength in numbers when fighting alongside others with the same keyword.",
      "This model is more effective when fighting alongside others with the same keyword.",
    ],
  ),
  QuizQuestion(
    "Implosion",
    [
      "After rolling to hit and using the Explosive or Grenade keyword, roll (n) dice 4+ test (X) for the attack’s strength (no modifiers or rerolls). All models in the target cube separately roll a 3 dice SURVIVE test (X).",
      "This model's attacks create an implosion effect, with the strength determined by a separate test.",
      "This model's attacks create an implosion",
    ],
  )
];
