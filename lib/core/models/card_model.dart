/// The DNA of the Axiom Engine.
/// This file defines the core data structures for both Tarot and Pasoor.

// --- ENUMS ---

/// Elemental types driving the Tarot Adjacency Matrix and Synergy logic.
enum MithraElement { fire, water, air, earth, spirit }

/// Traditional suits for the Minor Arcana.
enum MithraSuit { wands, cups, swords, pentacles, none }

/// Standard suits for the Pasoor expansion.
enum PasoorSuit { hearts, spades, diamonds, clubs }

/// Identifier to help the DeckSwitcher know which logic to apply.
enum DeckType { tarot, pasoor }

// --- DATA CLASSES ---

/// The Master Metadata class used by both decks.
class CardMetadata {
  final int index;         // Global index (0-77 for Tarot, 0-51 for Pasoor)
  final String id;        // SVG Symbol ID (e.g., 'pasoor-10-diamonds')
  final String name;      // Display name in English
  final String labelFa;   // Display name in Persian (for Pasoor/Tarot localization)
  
  // Tarot-Specific Fields
  final MithraElement? element;
  final MithraSuit? mithraSuit;
  final bool isMajor;

  // Pasoor-Specific Fields
  final PasoorSuit? pasoorSuit;
  final int mathValue;    // For the Rule-of-11
  final int points;       // Scoring weight (3 for 10-diamonds, 2 for 2-clubs, etc.)

  const CardMetadata({
    required this.index,
    required this.id,
    required this.name,
    required this.labelFa,
    this.element,
    this.mithraSuit,
    this.isMajor = false,
    this.pasoorSuit,
    this.mathValue = 0,
    this.points = 0,
  });
}

