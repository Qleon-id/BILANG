enum MemoryType { fact, preference, context, note }
enum MemoryCategory { personal, home, study, work, finance, other }

class Memory {
  const Memory({
    required this.id,
    required this.title,
    required this.content,
    required this.type,
    required this.category,
  });

  final String id;
  final String title;
  final String content;
  final MemoryType type;
  final MemoryCategory category;
}
